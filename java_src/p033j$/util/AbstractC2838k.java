package p033j$.util;

import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.ListIterator;
import java.util.Objects;
import java.util.Optional;
import java.util.OptionalDouble;
import java.util.OptionalInt;
import java.util.OptionalLong;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2815f;
import p033j$.util.function.InterfaceC2821l;
import p033j$.util.function.InterfaceC2825p;
/* renamed from: j$.util.k */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2838k {
    /* renamed from: a */
    public static void m608a(Spliterator.InterfaceC2771a interfaceC2771a, Consumer consumer) {
        if (consumer instanceof InterfaceC2815f) {
            interfaceC2771a.mo202e((InterfaceC2815f) consumer);
        } else if (AbstractC2770H.f696a) {
            AbstractC2770H.m675a(interfaceC2771a.getClass(), "{0} calling Spliterator.OfDouble.forEachRemaining((DoubleConsumer) action::accept)");
            throw null;
        } else {
            Objects.requireNonNull(consumer);
            interfaceC2771a.mo202e(new C2837j(consumer));
        }
    }

    /* renamed from: b */
    public static void m607b(Spliterator.InterfaceC2772b interfaceC2772b, Consumer consumer) {
        if (consumer instanceof InterfaceC2821l) {
            interfaceC2772b.mo196c((InterfaceC2821l) consumer);
        } else if (AbstractC2770H.f696a) {
            AbstractC2770H.m675a(interfaceC2772b.getClass(), "{0} calling Spliterator.OfInt.forEachRemaining((IntConsumer) action::accept)");
            throw null;
        } else {
            Objects.requireNonNull(consumer);
            interfaceC2772b.mo196c(new C2840m(consumer));
        }
    }

    /* renamed from: c */
    public static void m606c(Spliterator.InterfaceC2773c interfaceC2773c, Consumer consumer) {
        if (consumer instanceof InterfaceC2825p) {
            interfaceC2773c.mo190d((InterfaceC2825p) consumer);
        } else if (AbstractC2770H.f696a) {
            AbstractC2770H.m675a(interfaceC2773c.getClass(), "{0} calling Spliterator.OfLong.forEachRemaining((LongConsumer) action::accept)");
            throw null;
        } else {
            Objects.requireNonNull(consumer);
            interfaceC2773c.mo190d(new C2843o(consumer));
        }
    }

    /* renamed from: d */
    public static long m605d(Spliterator spliterator) {
        if ((spliterator.characteristics() & 64) == 0) {
            return -1L;
        }
        return spliterator.estimateSize();
    }

    /* renamed from: e */
    public static boolean m604e(Spliterator spliterator, int i) {
        return (spliterator.characteristics() & i) == i;
    }

    /* renamed from: f */
    public static boolean m603f(Spliterator.InterfaceC2771a interfaceC2771a, Consumer consumer) {
        if (consumer instanceof InterfaceC2815f) {
            return interfaceC2771a.mo201n((InterfaceC2815f) consumer);
        }
        if (AbstractC2770H.f696a) {
            AbstractC2770H.m675a(interfaceC2771a.getClass(), "{0} calling Spliterator.OfDouble.tryAdvance((DoubleConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return interfaceC2771a.mo201n(new C2837j(consumer));
    }

    /* renamed from: g */
    public static boolean m602g(Spliterator.InterfaceC2772b interfaceC2772b, Consumer consumer) {
        if (consumer instanceof InterfaceC2821l) {
            return interfaceC2772b.mo195g((InterfaceC2821l) consumer);
        }
        if (AbstractC2770H.f696a) {
            AbstractC2770H.m675a(interfaceC2772b.getClass(), "{0} calling Spliterator.OfInt.tryAdvance((IntConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return interfaceC2772b.mo195g(new C2840m(consumer));
    }

    /* renamed from: h */
    public static boolean m601h(Spliterator.InterfaceC2773c interfaceC2773c, Consumer consumer) {
        if (consumer instanceof InterfaceC2825p) {
            return interfaceC2773c.mo189i((InterfaceC2825p) consumer);
        }
        if (AbstractC2770H.f696a) {
            AbstractC2770H.m675a(interfaceC2773c.getClass(), "{0} calling Spliterator.OfLong.tryAdvance((LongConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return interfaceC2773c.mo189i(new C2843o(consumer));
    }

    /* renamed from: i */
    public static Optional m600i(Optional optional) {
        if (optional == null) {
            return null;
        }
        return optional.isPresent() ? Optional.m673of(optional.get()) : Optional.empty();
    }

    /* renamed from: j */
    public static C2834g m599j(OptionalDouble optionalDouble) {
        if (optionalDouble == null) {
            return null;
        }
        return optionalDouble.isPresent() ? C2834g.m617d(optionalDouble.getAsDouble()) : C2834g.m620a();
    }

    /* renamed from: k */
    public static C2835h m598k(OptionalInt optionalInt) {
        if (optionalInt == null) {
            return null;
        }
        return optionalInt.isPresent() ? C2835h.m613d(optionalInt.getAsInt()) : C2835h.m616a();
    }

    /* renamed from: l */
    public static C2836i m597l(OptionalLong optionalLong) {
        if (optionalLong == null) {
            return null;
        }
        return optionalLong.isPresent() ? C2836i.m609d(optionalLong.getAsLong()) : C2836i.m612a();
    }

    /* renamed from: m */
    public static Optional m596m(Optional optional) {
        if (optional == null) {
            return null;
        }
        return optional.isPresent() ? Optional.of(optional.get()) : Optional.empty();
    }

    /* renamed from: n */
    public static OptionalDouble m595n(C2834g c2834g) {
        if (c2834g == null) {
            return null;
        }
        return c2834g.m618c() ? OptionalDouble.of(c2834g.m619b()) : OptionalDouble.empty();
    }

    /* renamed from: o */
    public static OptionalInt m594o(C2835h c2835h) {
        if (c2835h == null) {
            return null;
        }
        return c2835h.m614c() ? OptionalInt.of(c2835h.m615b()) : OptionalInt.empty();
    }

    /* renamed from: p */
    public static OptionalLong m593p(C2836i c2836i) {
        if (c2836i == null) {
            return null;
        }
        return c2836i.m610c() ? OptionalLong.of(c2836i.m611b()) : OptionalLong.empty();
    }

    /* renamed from: q */
    public static boolean m592q(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* renamed from: r */
    public static void m591r(List list, Comparator comparator) {
        if (list instanceof List) {
            ((List) list).sort(comparator);
        } else if (DesugarCollections.f677b.isInstance(list)) {
            DesugarCollections.m690f(list, comparator);
        } else {
            Object[] array = list.toArray();
            Arrays.sort(array, comparator);
            ListIterator listIterator = list.listIterator();
            for (Object obj : array) {
                listIterator.next();
                listIterator.set(obj);
            }
        }
    }
}
