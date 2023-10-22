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
import p033j$.util.function.InterfaceC2816f;
import p033j$.util.function.InterfaceC2822l;
import p033j$.util.function.InterfaceC2826p;
/* renamed from: j$.util.k */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2839k {
    /* renamed from: a */
    public static void m604a(Spliterator.InterfaceC2772a interfaceC2772a, Consumer consumer) {
        if (consumer instanceof InterfaceC2816f) {
            interfaceC2772a.mo198e((InterfaceC2816f) consumer);
        } else if (AbstractC2771H.f696a) {
            AbstractC2771H.m671a(interfaceC2772a.getClass(), "{0} calling Spliterator.OfDouble.forEachRemaining((DoubleConsumer) action::accept)");
            throw null;
        } else {
            Objects.requireNonNull(consumer);
            interfaceC2772a.mo198e(new C2838j(consumer));
        }
    }

    /* renamed from: b */
    public static void m603b(Spliterator.InterfaceC2773b interfaceC2773b, Consumer consumer) {
        if (consumer instanceof InterfaceC2822l) {
            interfaceC2773b.mo192c((InterfaceC2822l) consumer);
        } else if (AbstractC2771H.f696a) {
            AbstractC2771H.m671a(interfaceC2773b.getClass(), "{0} calling Spliterator.OfInt.forEachRemaining((IntConsumer) action::accept)");
            throw null;
        } else {
            Objects.requireNonNull(consumer);
            interfaceC2773b.mo192c(new C2841m(consumer));
        }
    }

    /* renamed from: c */
    public static void m602c(Spliterator.InterfaceC2774c interfaceC2774c, Consumer consumer) {
        if (consumer instanceof InterfaceC2826p) {
            interfaceC2774c.mo186d((InterfaceC2826p) consumer);
        } else if (AbstractC2771H.f696a) {
            AbstractC2771H.m671a(interfaceC2774c.getClass(), "{0} calling Spliterator.OfLong.forEachRemaining((LongConsumer) action::accept)");
            throw null;
        } else {
            Objects.requireNonNull(consumer);
            interfaceC2774c.mo186d(new C2844o(consumer));
        }
    }

    /* renamed from: d */
    public static long m601d(Spliterator spliterator) {
        if ((spliterator.characteristics() & 64) == 0) {
            return -1L;
        }
        return spliterator.estimateSize();
    }

    /* renamed from: e */
    public static boolean m600e(Spliterator spliterator, int i) {
        return (spliterator.characteristics() & i) == i;
    }

    /* renamed from: f */
    public static boolean m599f(Spliterator.InterfaceC2772a interfaceC2772a, Consumer consumer) {
        if (consumer instanceof InterfaceC2816f) {
            return interfaceC2772a.mo197n((InterfaceC2816f) consumer);
        }
        if (AbstractC2771H.f696a) {
            AbstractC2771H.m671a(interfaceC2772a.getClass(), "{0} calling Spliterator.OfDouble.tryAdvance((DoubleConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return interfaceC2772a.mo197n(new C2838j(consumer));
    }

    /* renamed from: g */
    public static boolean m598g(Spliterator.InterfaceC2773b interfaceC2773b, Consumer consumer) {
        if (consumer instanceof InterfaceC2822l) {
            return interfaceC2773b.mo191g((InterfaceC2822l) consumer);
        }
        if (AbstractC2771H.f696a) {
            AbstractC2771H.m671a(interfaceC2773b.getClass(), "{0} calling Spliterator.OfInt.tryAdvance((IntConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return interfaceC2773b.mo191g(new C2841m(consumer));
    }

    /* renamed from: h */
    public static boolean m597h(Spliterator.InterfaceC2774c interfaceC2774c, Consumer consumer) {
        if (consumer instanceof InterfaceC2826p) {
            return interfaceC2774c.mo185i((InterfaceC2826p) consumer);
        }
        if (AbstractC2771H.f696a) {
            AbstractC2771H.m671a(interfaceC2774c.getClass(), "{0} calling Spliterator.OfLong.tryAdvance((LongConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return interfaceC2774c.mo185i(new C2844o(consumer));
    }

    /* renamed from: i */
    public static Optional m596i(Optional optional) {
        if (optional == null) {
            return null;
        }
        return optional.isPresent() ? Optional.m669of(optional.get()) : Optional.empty();
    }

    /* renamed from: j */
    public static C2835g m595j(OptionalDouble optionalDouble) {
        if (optionalDouble == null) {
            return null;
        }
        return optionalDouble.isPresent() ? C2835g.m613d(optionalDouble.getAsDouble()) : C2835g.m616a();
    }

    /* renamed from: k */
    public static C2836h m594k(OptionalInt optionalInt) {
        if (optionalInt == null) {
            return null;
        }
        return optionalInt.isPresent() ? C2836h.m609d(optionalInt.getAsInt()) : C2836h.m612a();
    }

    /* renamed from: l */
    public static C2837i m593l(OptionalLong optionalLong) {
        if (optionalLong == null) {
            return null;
        }
        return optionalLong.isPresent() ? C2837i.m605d(optionalLong.getAsLong()) : C2837i.m608a();
    }

    /* renamed from: m */
    public static Optional m592m(Optional optional) {
        if (optional == null) {
            return null;
        }
        return optional.isPresent() ? Optional.of(optional.get()) : Optional.empty();
    }

    /* renamed from: n */
    public static OptionalDouble m591n(C2835g c2835g) {
        if (c2835g == null) {
            return null;
        }
        return c2835g.m614c() ? OptionalDouble.of(c2835g.m615b()) : OptionalDouble.empty();
    }

    /* renamed from: o */
    public static OptionalInt m590o(C2836h c2836h) {
        if (c2836h == null) {
            return null;
        }
        return c2836h.m610c() ? OptionalInt.of(c2836h.m611b()) : OptionalInt.empty();
    }

    /* renamed from: p */
    public static OptionalLong m589p(C2837i c2837i) {
        if (c2837i == null) {
            return null;
        }
        return c2837i.m606c() ? OptionalLong.of(c2837i.m607b()) : OptionalLong.empty();
    }

    /* renamed from: q */
    public static boolean m588q(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* renamed from: r */
    public static void m587r(List list, Comparator comparator) {
        if (list instanceof List) {
            ((List) list).sort(comparator);
        } else if (DesugarCollections.f677b.isInstance(list)) {
            DesugarCollections.m686f(list, comparator);
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
