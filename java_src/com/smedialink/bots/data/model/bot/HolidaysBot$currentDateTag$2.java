package com.smedialink.bots.data.model.bot;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* compiled from: HolidaysBot.kt */
/* loaded from: classes3.dex */
final class HolidaysBot$currentDateTag$2 extends Lambda implements Function0<String> {
    public static final HolidaysBot$currentDateTag$2 INSTANCE = new HolidaysBot$currentDateTag$2();

    HolidaysBot$currentDateTag$2() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final String invoke() {
        return new SimpleDateFormat("dd.MM", Locale.getDefault()).format(new Date());
    }
}
