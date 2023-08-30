package io.grpc.okhttp;

import io.grpc.okhttp.internal.framed.Settings;
/* loaded from: classes4.dex */
class OkHttpSettingsUtil {
    public static boolean isSet(Settings settings, int i) {
        return settings.isSet(i);
    }

    public static int get(Settings settings, int i) {
        return settings.get(i);
    }

    public static void set(Settings settings, int i, int i2) {
        settings.set(i, 0, i2);
    }
}
