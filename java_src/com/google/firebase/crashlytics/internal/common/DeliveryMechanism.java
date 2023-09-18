package com.google.firebase.crashlytics.internal.common;
/* loaded from: classes4.dex */
public enum DeliveryMechanism {
    DEVELOPER(1),
    USER_SIDELOAD(2),
    TEST_DISTRIBUTION(3),
    APP_STORE(4);
    

    /* renamed from: id */
    private final int f242id;

    DeliveryMechanism(int i) {
        this.f242id = i;
    }

    public int getId() {
        return this.f242id;
    }

    @Override // java.lang.Enum
    public String toString() {
        return Integer.toString(this.f242id);
    }

    public static DeliveryMechanism determineFrom(String str) {
        return str != null ? APP_STORE : DEVELOPER;
    }
}
