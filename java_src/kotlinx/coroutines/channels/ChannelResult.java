package kotlinx.coroutines.channels;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: Channel.kt */
/* loaded from: classes4.dex */
public final class ChannelResult<T> {
    public static final Companion Companion = new Companion(null);
    private static final Failed failed = new Failed();
    private final Object holder;

    /* compiled from: Channel.kt */
    /* loaded from: classes4.dex */
    public static class Failed {
        public String toString() {
            return "Failed";
        }
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ ChannelResult m2103boximpl(Object obj) {
        return new ChannelResult(obj);
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static <T> Object m2104constructorimpl(Object obj) {
        return obj;
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m2105equalsimpl(Object obj, Object obj2) {
        return (obj2 instanceof ChannelResult) && Intrinsics.areEqual(obj, ((ChannelResult) obj2).m2111unboximpl());
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m2107hashCodeimpl(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public boolean equals(Object obj) {
        return m2105equalsimpl(this.holder, obj);
    }

    public int hashCode() {
        return m2107hashCodeimpl(this.holder);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ Object m2111unboximpl() {
        return this.holder;
    }

    private /* synthetic */ ChannelResult(Object obj) {
        this.holder = obj;
    }

    /* renamed from: isSuccess-impl  reason: not valid java name */
    public static final boolean m2109isSuccessimpl(Object obj) {
        return !(obj instanceof Failed);
    }

    /* renamed from: isClosed-impl  reason: not valid java name */
    public static final boolean m2108isClosedimpl(Object obj) {
        return obj instanceof Closed;
    }

    /* renamed from: exceptionOrNull-impl  reason: not valid java name */
    public static final Throwable m2106exceptionOrNullimpl(Object obj) {
        Closed closed = obj instanceof Closed ? (Closed) obj : null;
        if (closed != null) {
            return closed.cause;
        }
        return null;
    }

    /* compiled from: Channel.kt */
    /* loaded from: classes4.dex */
    public static final class Closed extends Failed {
        public final Throwable cause;

        public Closed(Throwable th) {
            this.cause = th;
        }

        public boolean equals(Object obj) {
            return (obj instanceof Closed) && Intrinsics.areEqual(this.cause, ((Closed) obj).cause);
        }

        public int hashCode() {
            Throwable th = this.cause;
            if (th != null) {
                return th.hashCode();
            }
            return 0;
        }

        @Override // kotlinx.coroutines.channels.ChannelResult.Failed
        public String toString() {
            return "Closed(" + this.cause + ')';
        }
    }

    /* compiled from: Channel.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: success-JP2dKIU  reason: not valid java name */
        public final <E> Object m2114successJP2dKIU(E e) {
            return ChannelResult.m2104constructorimpl(e);
        }

        /* renamed from: failure-PtdJZtk  reason: not valid java name */
        public final <E> Object m2113failurePtdJZtk() {
            return ChannelResult.m2104constructorimpl(ChannelResult.failed);
        }

        /* renamed from: closed-JP2dKIU  reason: not valid java name */
        public final <E> Object m2112closedJP2dKIU(Throwable th) {
            return ChannelResult.m2104constructorimpl(new Closed(th));
        }
    }

    public String toString() {
        return m2110toStringimpl(this.holder);
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static String m2110toStringimpl(Object obj) {
        if (obj instanceof Closed) {
            return ((Closed) obj).toString();
        }
        return "Value(" + obj + ')';
    }
}
