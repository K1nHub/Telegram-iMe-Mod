package kotlinx.serialization.descriptors;

import kotlin.jvm.internal.DefaultConstructorMarker;
/* compiled from: SerialKinds.kt */
/* loaded from: classes4.dex */
public abstract class PrimitiveKind extends SerialKind {
    public /* synthetic */ PrimitiveKind(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private PrimitiveKind() {
        super(null);
    }

    /* compiled from: SerialKinds.kt */
    /* loaded from: classes4.dex */
    public static final class BOOLEAN extends PrimitiveKind {
        public static final BOOLEAN INSTANCE = new BOOLEAN();

        private BOOLEAN() {
            super(null);
        }
    }

    /* compiled from: SerialKinds.kt */
    /* loaded from: classes4.dex */
    public static final class BYTE extends PrimitiveKind {
        public static final BYTE INSTANCE = new BYTE();

        private BYTE() {
            super(null);
        }
    }

    /* compiled from: SerialKinds.kt */
    /* loaded from: classes4.dex */
    public static final class CHAR extends PrimitiveKind {
        public static final CHAR INSTANCE = new CHAR();

        private CHAR() {
            super(null);
        }
    }

    /* compiled from: SerialKinds.kt */
    /* loaded from: classes4.dex */
    public static final class SHORT extends PrimitiveKind {
        public static final SHORT INSTANCE = new SHORT();

        private SHORT() {
            super(null);
        }
    }

    /* compiled from: SerialKinds.kt */
    /* loaded from: classes4.dex */
    public static final class INT extends PrimitiveKind {
        public static final INT INSTANCE = new INT();

        private INT() {
            super(null);
        }
    }

    /* compiled from: SerialKinds.kt */
    /* loaded from: classes4.dex */
    public static final class LONG extends PrimitiveKind {
        public static final LONG INSTANCE = new LONG();

        private LONG() {
            super(null);
        }
    }

    /* compiled from: SerialKinds.kt */
    /* loaded from: classes4.dex */
    public static final class FLOAT extends PrimitiveKind {
        public static final FLOAT INSTANCE = new FLOAT();

        private FLOAT() {
            super(null);
        }
    }

    /* compiled from: SerialKinds.kt */
    /* loaded from: classes4.dex */
    public static final class DOUBLE extends PrimitiveKind {
        public static final DOUBLE INSTANCE = new DOUBLE();

        private DOUBLE() {
            super(null);
        }
    }

    /* compiled from: SerialKinds.kt */
    /* loaded from: classes4.dex */
    public static final class STRING extends PrimitiveKind {
        public static final STRING INSTANCE = new STRING();

        private STRING() {
            super(null);
        }
    }
}
