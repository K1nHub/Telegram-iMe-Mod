package org.koin.p042mp;
/* compiled from: KoinPlatformTimeTools.kt */
/* renamed from: org.koin.mp.KoinPlatformTimeTools */
/* loaded from: classes6.dex */
public final class KoinPlatformTimeTools {
    public static final KoinPlatformTimeTools INSTANCE = new KoinPlatformTimeTools();

    private KoinPlatformTimeTools() {
    }

    public final long getTimeInNanoSeconds() {
        return System.nanoTime();
    }
}
