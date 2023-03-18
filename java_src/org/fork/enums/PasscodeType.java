package org.fork.enums;

import kotlin.jvm.internal.DefaultConstructorMarker;
/* compiled from: PasscodeType.kt */
/* loaded from: classes4.dex */
public enum PasscodeType {
    PIN(0),
    PASSWORD(1);
    
    public static final Companion Companion = new Companion(null);

    /* renamed from: id */
    private final int f1417id;

    public static final PasscodeType findById(int i) {
        return Companion.findById(i);
    }

    PasscodeType(int i) {
        this.f1417id = i;
    }

    public final int getId() {
        return this.f1417id;
    }

    /* compiled from: PasscodeType.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final PasscodeType findById(int i) {
            PasscodeType passcodeType;
            PasscodeType[] values = PasscodeType.values();
            int length = values.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    passcodeType = null;
                    break;
                }
                passcodeType = values[i2];
                if (passcodeType.getId() == i) {
                    break;
                }
                i2++;
            }
            return passcodeType == null ? PasscodeType.PIN : passcodeType;
        }
    }
}
