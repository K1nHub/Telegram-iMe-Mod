package com.stripe.android.time;

import java.util.Calendar;
/* loaded from: classes3.dex */
public class FrozenClock extends Clock {
    public static void freeze(Calendar calendar) {
        Clock.getInstance().calendarInstance = calendar;
    }

    public static void unfreeze() {
        Clock.getInstance().calendarInstance = null;
    }
}
