package kotlinx.serialization.descriptors;

import kotlin.jvm.internal.DefaultConstructorMarker;
/* compiled from: SerialKinds.kt */
/* loaded from: classes4.dex */
public abstract class StructureKind extends SerialKind {
    public /* synthetic */ StructureKind(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private StructureKind() {
        super(null);
    }

    /* compiled from: SerialKinds.kt */
    /* loaded from: classes4.dex */
    public static final class CLASS extends StructureKind {
        public static final CLASS INSTANCE = new CLASS();

        private CLASS() {
            super(null);
        }
    }

    /* compiled from: SerialKinds.kt */
    /* loaded from: classes4.dex */
    public static final class LIST extends StructureKind {
        public static final LIST INSTANCE = new LIST();

        private LIST() {
            super(null);
        }
    }

    /* compiled from: SerialKinds.kt */
    /* loaded from: classes4.dex */
    public static final class MAP extends StructureKind {
        public static final MAP INSTANCE = new MAP();

        private MAP() {
            super(null);
        }
    }

    /* compiled from: SerialKinds.kt */
    /* loaded from: classes4.dex */
    public static final class OBJECT extends StructureKind {
        public static final OBJECT INSTANCE = new OBJECT();

        private OBJECT() {
            super(null);
        }
    }
}
