package com.smedialink.storage.data.common;

import java.util.Map;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
/* compiled from: RemoteConfigConstants.kt */
/* loaded from: classes3.dex */
public final class RemoteConfigConstants {
    public static final RemoteConfigConstants INSTANCE = new RemoteConfigConstants();
    private static final Map<String, Object> defaultValues;

    public final long getMinFetchInterval() {
        return 3600L;
    }

    private RemoteConfigConstants() {
    }

    public final Map<String, Object> getDefaultValues() {
        return defaultValues;
    }

    static {
        Map<String, Object> mapOf;
        mapOf = MapsKt__MapsJVMKt.mapOf(TuplesKt.m100to("on_ona_shop_enabled", Boolean.FALSE));
        defaultValues = mapOf;
    }
}
