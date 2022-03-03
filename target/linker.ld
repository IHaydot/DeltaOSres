ENTRY(_start)

OUTPUT
(
    build/kernel.tmp
)

SECTIONS
{
    . = 0x7e00;

    .idt BLOCK(0x1000) : ALIGN(0x1000)
    {
        _idt = .;
        . = . + 0x1000;
    }
}