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
import p033j$.util.function.InterfaceC2817f;
import p033j$.util.function.InterfaceC2823l;
import p033j$.util.function.InterfaceC2827p;
/* renamed from: j$.util.k */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2840k {
    /* renamed from: a */
    public static void m605a(Spliterator.InterfaceC2773a interfaceC2773a, Consumer consumer) {
        if (consumer instanceof InterfaceC2817f) {
            interfaceC2773a.mo199e((InterfaceC2817f) consumer);
        } else if (AbstractC2772H.f696a) {
            AbstractC2772H.m672a(interfaceC2773a.getClass(), "{0} calling Spliterator.OfDouble.forEachRemaining((DoubleConsumer) action::accept)");
            throw null;
        } else {
            Objects.requireNonNull(consumer);
            interfaceC2773a.mo199e(new C2839j(consumer));
        }
    }

    /* renamed from: b */
    public static void m604b(Spliterator.InterfaceC2774b interfaceC2774b, Consumer consumer) {
        if (consumer instanceof InterfaceC2823l) {
            interfaceC2774b.mo193c((InterfaceC2823l) consumer);
        } else if (AbstractC2772H.f696a) {
            AbstractC2772H.m672a(interfaceC2774b.getClass(), "{0} calling Spliterator.OfInt.forEachRemaining((IntConsumer) action::accept)");
            throw null;
        } else {
            Objects.requireNonNull(consumer);
            interfaceC2774b.mo193c(new C2842m(consumer));
        }
    }

    /* renamed from: c */
    public static void m603c(Spliterator.InterfaceC2775c interfaceC2775c, Consumer consumer) {
        if (consumer instanceof InterfaceC2827p) {
            interfaceC2775c.mo187d((InterfaceC2827p) consumer);
        } else if (AbstractC2772H.f696a) {
            AbstractC2772H.m672a(interfaceC2775c.getClass(), "{0} calling Spliterator.OfLong.forEachRemaining((LongConsumer) action::accept)");
            throw null;
        } else {
            Objects.requireNonNull(consumer);
            interfaceC2775c.mo187d(new C2845o(consumer));
        }
    }

    /* renamed from: d */
    public static long m602d(Spliterator spliterator) {
        if ((spliterator.characteristics() & 64) == 0) {
            return -1L;
        }
        return spliterator.estimateSize();
    }

    /* renamed from: e */
    public static boolean m601e(Spliterator spliterator, int i) {
        return (spliterator.characteristics() & i) == i;
    }

    /* renamed from: f */
    public static boolean m600f(Spliterator.InterfaceC2773a interfaceC2773a, Consumer consumer) {
        if (consumer instanceof InterfaceC2817f) {
            return interfaceC2773a.mo198n((InterfaceC2817f) consumer);
        }
        if (AbstractC2772H.f696a) {
            AbstractC2772H.m672a(interfaceC2773a.getClass(), "{0} calling Spliterator.OfDouble.tryAdvance((DoubleConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return interfaceC2773a.mo198n(new C2839j(consumer));
    }

    /* renamed from: g */
    public static boolean m599g(Spliterator.InterfaceC2774b interfaceC2774b, Consumer consumer) {
        if (consumer instanceof InterfaceC2823l) {
            return interfaceC2774b.mo192g((InterfaceC2823l) consumer);
        }
        if (AbstractC2772H.f696a) {
            AbstractC2772H.m672a(interfaceC2774b.getClass(), "{0} calling Spliterator.OfInt.tryAdvance((IntConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return interfaceC2774b.mo192g(new C2842m(consumer));
    }

    /* renamed from: h */
    public static boolean m598h(Spliterator.InterfaceC2775c interfaceC2775c, Consumer consumer) {
        if (consumer instanceof InterfaceC2827p) {
            return interfaceC2775c.mo186i((InterfaceC2827p) consumer);
        }
        if (AbstractC2772H.f696a) {
            AbstractC2772H.m672a(interfaceC2775c.getClass(), "{0} calling Spliterator.OfLong.tryAdvance((LongConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return interfaceC2775c.mo186i(new C2845o(consumer));
    }

    /* renamed from: i */
    public static Optional m597i(Optional optional) {
        if (optional == null) {
            return null;
        }
        return optional.isPresent() ? Optional.m670of(optional.get()) : Optional.empty();
    }

    /* renamed from: j */
    public static C2836g m596j(OptionalDouble optionalDouble) {
        if (optionalDouble == null) {
            return null;
        }
        return optionalDouble.isPresent() ? C2836g.m614d(optionalDouble.getAsDouble()) : C2836g.m617a();
    }

    /* renamed from: k */
    public static C2837h m595k(OptionalInt optionalInt) {
        if (optionalInt == null) {
            return null;
        }
        return optionalInt.isPresent() ? C2837h.m610d(optionalInt.getAsInt()) : C2837h.m613a();
    }

    /* renamed from: l */
    public static C2838i m594l(OptionalLong optionalLong) {
        if (optionalLong == null) {
            return null;
        }
        return optionalLong.isPresent() ? C2838i.m606d(optionalLong.getAsLong()) : C2838i.m609a();
    }

    /* renamed from: m */
    public static Optional m593m(Optional optional) {
        if (optional == null) {
            return null;
        }
        return optional.isPresent() ? Optional.of(optional.get()) : Optional.empty();
    }

    /* renamed from: n */
    public static OptionalDouble m592n(C2836g c2836g) {
        if (c2836g == null) {
            return null;
        }
        return c2836g.m615c() ? OptionalDouble.of(c2836g.m616b()) : OptionalDouble.empty();
    }

    /* renamed from: o */
    public static OptionalInt m591o(C2837h c2837h) {
        if (c2837h == null) {
            return null;
        }
        return c2837h.m611c() ? OptionalInt.of(c2837h.m612b()) : OptionalInt.empty();
    }

    /* renamed from: p */
    public static OptionalLong m590p(C2838i c2838i) {
        if (c2838i == null) {
            return null;
        }
        return c2838i.m607c() ? OptionalLong.of(c2838i.m608b()) : OptionalLong.empty();
    }

    /* renamed from: q */
    public static boolean m589q(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* renamed from: r */
    public static void m588r(List list, Comparator comparator) {
        if (list instanceof List) {
            ((List) list).sort(comparator);
        } else if (DesugarCollections.f677b.isInstance(list)) {
            DesugarCollections.m687f(list, comparator);
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
