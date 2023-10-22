package kotlinx.serialization.descriptors;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
/* compiled from: SerialKinds.kt */
/* loaded from: classes4.dex */
public abstract class SerialKind {
    public /* synthetic */ SerialKind(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private SerialKind() {
    }

    /* compiled from: SerialKinds.kt */
    /* loaded from: classes4.dex */
    public static final class ENUM extends SerialKind {
        public static final ENUM INSTANCE = new ENUM();

        private ENUM() {
            super(null);
        }
    }

    /* compiled from: SerialKinds.kt */
    /* loaded from: classes4.dex */
    public static final class CONTEXTUAL extends SerialKind {
        public static final CONTEXTUAL INSTANCE = new CONTEXTUAL();

        private CONTEXTUAL() {
            super(null);
        }
    }

    public String toString() {
        String simpleName = Reflection.getOrCreateKotlinClass(getClass()).getSimpleName();
        Intrinsics.checkNotNull(simpleName);
        return simpleName;
    }

    public int hashCode() {
        return toString().hashCode();
    }
}
