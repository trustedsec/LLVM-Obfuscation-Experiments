#include <Windows.h>

int  WinMain(
  [in]           HINSTANCE hInstance,
  [in, optional] HINSTANCE hPrevInstance,
  [in]           LPSTR     lpCmdLine,
  [in]           int       nShowCmd
)
{
    MessageBoxA(NULL, "Test compile1", "Test compile", 0);
    return 0;   
}