/*
 * columns.h - header file for a columns-based widget container
 * capable of supporting the PuTTY portable dialog box layout
 * mechanism.
 */

#ifndef COLUMNS_H
#define COLUMNS_H

#include <gdk/gdk.h>
#include <gtk/gtk.h>

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

#define TYPE_COLUMNS (columns_get_type())
#define COLUMNS(obj) (G_TYPE_CHECK_INSTANCE_CAST((obj), TYPE_COLUMNS, Columns))
#define COLUMNS_CLASS(klass)                                            \
    (G_TYPE_CHECK_CLASS_CAST((klass), TYPE_COLUMNS, ColumnsClass))
#define IS_COLUMNS(obj) (G_TYPE_CHECK_INSTANCE_TYPE((obj), TYPE_COLUMNS))
#define IS_COLUMNS_CLASS(klass) (G_TYPE_CHECK_CLASS_TYPE((klass), TYPE_COLUMNS))

typedef struct Columns_tag Columns;
typedef struct ColumnsClass_tag ColumnsClass;
typedef struct ColumnsChild_tag ColumnsChild;

struct Columns_tag {
    GtkContainer container;
    /* private after here */
    GList *children;                   /* this holds ColumnsChild structures */
    GList *taborder;                   /* this just holds GtkWidgets */
    ColumnsChild *vexpand;
    gint spacing;
};

struct ColumnsClass_tag {
    GtkContainerClass parent_class;
};

struct ColumnsChild_tag {
    /* If `widget' is non-NULL, this entry represents an actual widget. */
    GtkWidget *widget;
    gint colstart, colspan;
    bool force_left;                  /* for recalcitrant GtkLabels */
    /* Otherwise, this entry represents a change in the column setup. */
    gint ncols;
    gint *percentages;
    gint x, y, w, h;           /* used during an individual size computation */

    /* Circularly linked list of children that are vertically aligned
     * with each other. */
    ColumnsChild *valign_next, *valign_prev;

    /* Temporary space used within some methods */
    bool visited;
};

GType columns_get_type(void);
GtkWidget *columns_new(gint spacing);
void columns_set_cols(Columns *cols, gint ncols, const gint *percentages);
void columns_add(Columns *cols, GtkWidget *child,
                 gint colstart, gint colspan);
void columns_taborder_last(Columns *cols, GtkWidget *child);
void columns_force_left_align(Columns *cols, GtkWidget *child);
void columns_align_next_to(Columns *cols, GtkWidget *ch1, GtkWidget *ch2);
void columns_vexpand(Columns *cols, GtkWidget *child);

#ifdef __cplusplus
}
#endif /* __cplusplus */

#endif /* COLUMNS_H */
