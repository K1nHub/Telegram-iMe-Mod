package androidx.lifecycle;

import java.util.concurrent.atomic.AtomicReference;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: Lifecycle.kt */
/* loaded from: classes.dex */
public abstract class Lifecycle {
    private AtomicReference<Object> internalScopeRef = new AtomicReference<>();

    public abstract void addObserver(LifecycleObserver lifecycleObserver);

    public abstract State getCurrentState();

    public abstract void removeObserver(LifecycleObserver lifecycleObserver);

    public final AtomicReference<Object> getInternalScopeRef() {
        return this.internalScopeRef;
    }

    /* compiled from: Lifecycle.kt */
    /* loaded from: classes.dex */
    public enum Event {
        ON_CREATE,
        ON_START,
        ON_RESUME,
        ON_PAUSE,
        ON_STOP,
        ON_DESTROY,
        ON_ANY;
        
        public static final Companion Companion = new Companion(null);

        /* compiled from: Lifecycle.kt */
        /* loaded from: classes.dex */
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[Event.values().length];
                try {
                    iArr[Event.ON_CREATE.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[Event.ON_STOP.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[Event.ON_START.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[Event.ON_PAUSE.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[Event.ON_RESUME.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                try {
                    iArr[Event.ON_DESTROY.ordinal()] = 6;
                } catch (NoSuchFieldError unused6) {
                }
                try {
                    iArr[Event.ON_ANY.ordinal()] = 7;
                } catch (NoSuchFieldError unused7) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public static final Event downFrom(State state) {
            return Companion.downFrom(state);
        }

        public static final Event downTo(State state) {
            return Companion.downTo(state);
        }

        public static final Event upFrom(State state) {
            return Companion.upFrom(state);
        }

        public static final Event upTo(State state) {
            return Companion.upTo(state);
        }

        public final State getTargetState() {
            switch (WhenMappings.$EnumSwitchMapping$0[ordinal()]) {
                case 1:
                case 2:
                    return State.CREATED;
                case 3:
                case 4:
                    return State.STARTED;
                case 5:
                    return State.RESUMED;
                case 6:
                    return State.DESTROYED;
                default:
                    throw new IllegalArgumentException(this + " has no target state");
            }
        }

        /* compiled from: Lifecycle.kt */
        /* loaded from: classes.dex */
        public static final class Companion {

            /* compiled from: Lifecycle.kt */
            /* loaded from: classes.dex */
            public /* synthetic */ class WhenMappings {
                public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                static {
                    int[] iArr = new int[State.values().length];
                    try {
                        iArr[State.CREATED.ordinal()] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    try {
                        iArr[State.STARTED.ordinal()] = 2;
                    } catch (NoSuchFieldError unused2) {
                    }
                    try {
                        iArr[State.RESUMED.ordinal()] = 3;
                    } catch (NoSuchFieldError unused3) {
                    }
                    try {
                        iArr[State.DESTROYED.ordinal()] = 4;
                    } catch (NoSuchFieldError unused4) {
                    }
                    try {
                        iArr[State.INITIALIZED.ordinal()] = 5;
                    } catch (NoSuchFieldError unused5) {
                    }
                    $EnumSwitchMapping$0 = iArr;
                }
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final Event downFrom(State state) {
                Intrinsics.checkNotNullParameter(state, "state");
                int i = WhenMappings.$EnumSwitchMapping$0[state.ordinal()];
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            return null;
                        }
                        return Event.ON_PAUSE;
                    }
                    return Event.ON_STOP;
                }
                return Event.ON_DESTROY;
            }

            public final Event downTo(State state) {
                Intrinsics.checkNotNullParameter(state, "state");
                int i = WhenMappings.$EnumSwitchMapping$0[state.ordinal()];
                if (i != 1) {
                    if (i != 2) {
                        if (i != 4) {
                            return null;
                        }
                        return Event.ON_DESTROY;
                    }
                    return Event.ON_PAUSE;
                }
                return Event.ON_STOP;
            }

            public final Event upFrom(State state) {
                Intrinsics.checkNotNullParameter(state, "state");
                int i = WhenMappings.$EnumSwitchMapping$0[state.ordinal()];
                if (i != 1) {
                    if (i != 2) {
                        if (i != 5) {
                            return null;
                        }
                        return Event.ON_CREATE;
                    }
                    return Event.ON_RESUME;
                }
                return Event.ON_START;
            }

            public final Event upTo(State state) {
                Intrinsics.checkNotNullParameter(state, "state");
                int i = WhenMappings.$EnumSwitchMapping$0[state.ordinal()];
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            return null;
                        }
                        return Event.ON_RESUME;
                    }
                    return Event.ON_START;
                }
                return Event.ON_CREATE;
            }
        }
    }

    /* compiled from: Lifecycle.kt */
    /* loaded from: classes.dex */
    public enum State {
        DESTROYED,
        INITIALIZED,
        CREATED,
        STARTED,
        RESUMED;

        public final boolean isAtLeast(State state) {
            Intrinsics.checkNotNullParameter(state, "state");
            return compareTo(state) >= 0;
        }
    }
}
