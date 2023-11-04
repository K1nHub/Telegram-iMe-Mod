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
import p033j$.util.function.InterfaceC2820f;
import p033j$.util.function.InterfaceC2826l;
import p033j$.util.function.InterfaceC2830p;
/* renamed from: j$.util.k */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2843k {
    /* renamed from: a */
    public static void m605a(Spliterator.InterfaceC2776a interfaceC2776a, Consumer consumer) {
        if (consumer instanceof InterfaceC2820f) {
            interfaceC2776a.mo199e((InterfaceC2820f) consumer);
        } else if (AbstractC2775H.f696a) {
            AbstractC2775H.m672a(interfaceC2776a.getClass(), "{0} calling Spliterator.OfDouble.forEachRemaining((DoubleConsumer) action::accept)");
            throw null;
        } else {
            Objects.requireNonNull(consumer);
            interfaceC2776a.mo199e(new C2842j(consumer));
        }
    }

    /* renamed from: b */
    public static void m604b(Spliterator.InterfaceC2777b interfaceC2777b, Consumer consumer) {
        if (consumer instanceof InterfaceC2826l) {
            interfaceC2777b.mo193c((InterfaceC2826l) consumer);
        } else if (AbstractC2775H.f696a) {
            AbstractC2775H.m672a(interfaceC2777b.getClass(), "{0} calling Spliterator.OfInt.forEachRemaining((IntConsumer) action::accept)");
            throw null;
        } else {
            Objects.requireNonNull(consumer);
            interfaceC2777b.mo193c(new C2845m(consumer));
        }
    }

    /* renamed from: c */
    public static void m603c(Spliterator.InterfaceC2778c interfaceC2778c, Consumer consumer) {
        if (consumer instanceof InterfaceC2830p) {
            interfaceC2778c.mo187d((InterfaceC2830p) consumer);
        } else if (AbstractC2775H.f696a) {
            AbstractC2775H.m672a(interfaceC2778c.getClass(), "{0} calling Spliterator.OfLong.forEachRemaining((LongConsumer) action::accept)");
            throw null;
        } else {
            Objects.requireNonNull(consumer);
            interfaceC2778c.mo187d(new C2848o(consumer));
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
    public static boolean m600f(Spliterator.InterfaceC2776a interfaceC2776a, Consumer consumer) {
        if (consumer instanceof InterfaceC2820f) {
            return interfaceC2776a.mo198n((InterfaceC2820f) consumer);
        }
        if (AbstractC2775H.f696a) {
            AbstractC2775H.m672a(interfaceC2776a.getClass(), "{0} calling Spliterator.OfDouble.tryAdvance((DoubleConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return interfaceC2776a.mo198n(new C2842j(consumer));
    }

    /* renamed from: g */
    public static boolean m599g(Spliterator.InterfaceC2777b interfaceC2777b, Consumer consumer) {
        if (consumer instanceof InterfaceC2826l) {
            return interfaceC2777b.mo192g((InterfaceC2826l) consumer);
        }
        if (AbstractC2775H.f696a) {
            AbstractC2775H.m672a(interfaceC2777b.getClass(), "{0} calling Spliterator.OfInt.tryAdvance((IntConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return interfaceC2777b.mo192g(new C2845m(consumer));
    }

    /* renamed from: h */
    public static boolean m598h(Spliterator.InterfaceC2778c interfaceC2778c, Consumer consumer) {
        if (consumer instanceof InterfaceC2830p) {
            return interfaceC2778c.mo186i((InterfaceC2830p) consumer);
        }
        if (AbstractC2775H.f696a) {
            AbstractC2775H.m672a(interfaceC2778c.getClass(), "{0} calling Spliterator.OfLong.tryAdvance((LongConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return interfaceC2778c.mo186i(new C2848o(consumer));
    }

    /* renamed from: i */
    public static Optional m597i(Optional optional) {
        if (optional == null) {
            return null;
        }
        return optional.isPresent() ? Optional.m670of(optional.get()) : Optional.empty();
    }

    /* renamed from: j */
    public static C2839g m596j(OptionalDouble optionalDouble) {
        if (optionalDouble == null) {
            return null;
        }
        return optionalDouble.isPresent() ? C2839g.m614d(optionalDouble.getAsDouble()) : C2839g.m617a();
    }

    /* renamed from: k */
    public static C2840h m595k(OptionalInt optionalInt) {
        if (optionalInt == null) {
            return null;
        }
        return optionalInt.isPresent() ? C2840h.m610d(optionalInt.getAsInt()) : C2840h.m613a();
    }

    /* renamed from: l */
    public static C2841i m594l(OptionalLong optionalLong) {
        if (optionalLong == null) {
            return null;
        }
        return optionalLong.isPresent() ? C2841i.m606d(optionalLong.getAsLong()) : C2841i.m609a();
    }

    /* renamed from: m */
    public static Optional m593m(Optional optional) {
        if (optional == null) {
            return null;
        }
        return optional.isPresent() ? Optional.of(optional.get()) : Optional.empty();
    }

    /* renamed from: n */
    public static OptionalDouble m592n(C2839g c2839g) {
        if (c2839g == null) {
            return null;
        }
        return c2839g.m615c() ? OptionalDouble.of(c2839g.m616b()) : OptionalDouble.empty();
    }

    /* renamed from: o */
    public static OptionalInt m591o(C2840h c2840h) {
        if (c2840h == null) {
            return null;
        }
        return c2840h.m611c() ? OptionalInt.of(c2840h.m612b()) : OptionalInt.empty();
    }

    /* renamed from: p */
    public static OptionalLong m590p(C2841i c2841i) {
        if (c2841i == null) {
            return null;
        }
        return c2841i.m607c() ? OptionalLong.of(c2841i.m608b()) : OptionalLong.empty();
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
