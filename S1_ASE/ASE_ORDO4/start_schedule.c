#include "hw.h"
#include "yield.h"
#include <stdlib.h>

void start_schedule()
{
    setup_irq(TIMER_IRQ, yield);
    start_hw();
    yield();
}
