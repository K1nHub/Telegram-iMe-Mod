package p033j$.util;

import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Objects;
import java.util.Optional;
import java.util.OptionalDouble;
import java.util.OptionalInt;
import java.util.OptionalLong;
import p033j$.util.InterfaceC2992s;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2959f;
import p033j$.util.function.InterfaceC2965l;
import p033j$.util.function.InterfaceC2970q;
import p033j$.util.function.Predicate;
import p033j$.util.stream.AbstractC3229o1;
import p033j$.util.stream.Stream;
/* renamed from: j$.util.a */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC2919a {
    /* renamed from: a */
    public static void m628a(Collection collection, Consumer consumer) {
        Objects.requireNonNull(consumer);
        for (Object obj : collection) {
            consumer.accept(obj);
        }
    }

    /* renamed from: b */
    public static void m627b(InterfaceC2992s.InterfaceC2993a interfaceC2993a, Consumer consumer) {
        if (consumer instanceof InterfaceC2959f) {
            interfaceC2993a.mo150e((InterfaceC2959f) consumer);
        } else if (AbstractC2918K.f662a) {
            AbstractC2918K.m630a(interfaceC2993a.getClass(), "{0} calling Spliterator.OfDouble.forEachRemaining((DoubleConsumer) action::accept)");
            throw null;
        } else {
            Objects.requireNonNull(consumer);
            interfaceC2993a.mo150e(new C2984l(consumer));
        }
    }

    /* renamed from: c */
    public static void m626c(InterfaceC2992s.InterfaceC2994b interfaceC2994b, Consumer consumer) {
        if (consumer instanceof InterfaceC2965l) {
            interfaceC2994b.mo143c((InterfaceC2965l) consumer);
        } else if (AbstractC2918K.f662a) {
            AbstractC2918K.m630a(interfaceC2994b.getClass(), "{0} calling Spliterator.OfInt.forEachRemaining((IntConsumer) action::accept)");
            throw null;
        } else {
            Objects.requireNonNull(consumer);
            interfaceC2994b.mo143c(new C2986n(consumer));
        }
    }

    /* renamed from: d */
    public static void m625d(InterfaceC2992s.InterfaceC2995c interfaceC2995c, Consumer consumer) {
        if (consumer instanceof InterfaceC2970q) {
            interfaceC2995c.mo137d((InterfaceC2970q) consumer);
        } else if (AbstractC2918K.f662a) {
            AbstractC2918K.m630a(interfaceC2995c.getClass(), "{0} calling Spliterator.OfLong.forEachRemaining((LongConsumer) action::accept)");
            throw null;
        } else {
            Objects.requireNonNull(consumer);
            interfaceC2995c.mo137d(new C2989p(consumer));
        }
    }

    /* renamed from: e */
    public static long m624e(InterfaceC2992s interfaceC2992s) {
        if ((interfaceC2992s.characteristics() & 64) == 0) {
            return -1L;
        }
        return interfaceC2992s.estimateSize();
    }

    /* renamed from: f */
    public static boolean m623f(InterfaceC2992s interfaceC2992s, int i) {
        return (interfaceC2992s.characteristics() & i) == i;
    }

    /* renamed from: g */
    public static Stream m622g(Collection collection) {
        return AbstractC3229o1.m353y(Collection$EL.m652b(collection), true);
    }

    /* renamed from: h */
    public static boolean m621h(Collection collection, Predicate predicate) {
        if (DesugarCollections.f633a.isInstance(collection)) {
            return DesugarCollections.m647c(collection, predicate);
        }
        Objects.requireNonNull(predicate);
        boolean z = false;
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (predicate.test(it.next())) {
                it.remove();
                z = true;
            }
        }
        return z;
    }

    /* renamed from: i */
    public static Stream m620i(Collection collection) {
        return AbstractC3229o1.m353y(Collection$EL.m652b(collection), false);
    }

    /* renamed from: j */
    public static boolean m619j(InterfaceC2992s.InterfaceC2993a interfaceC2993a, Consumer consumer) {
        if (consumer instanceof InterfaceC2959f) {
            return interfaceC2993a.mo149k((InterfaceC2959f) consumer);
        }
        if (AbstractC2918K.f662a) {
            AbstractC2918K.m630a(interfaceC2993a.getClass(), "{0} calling Spliterator.OfDouble.tryAdvance((DoubleConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return interfaceC2993a.mo149k(new C2984l(consumer));
    }

    /* renamed from: k */
    public static boolean m618k(InterfaceC2992s.InterfaceC2994b interfaceC2994b, Consumer consumer) {
        if (consumer instanceof InterfaceC2965l) {
            return interfaceC2994b.mo142g((InterfaceC2965l) consumer);
        }
        if (AbstractC2918K.f662a) {
            AbstractC2918K.m630a(interfaceC2994b.getClass(), "{0} calling Spliterator.OfInt.tryAdvance((IntConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return interfaceC2994b.mo142g(new C2986n(consumer));
    }

    /* renamed from: l */
    public static boolean m617l(InterfaceC2992s.InterfaceC2995c interfaceC2995c, Consumer consumer) {
        if (consumer instanceof InterfaceC2970q) {
            return interfaceC2995c.mo136i((InterfaceC2970q) consumer);
        }
        if (AbstractC2918K.f662a) {
            AbstractC2918K.m630a(interfaceC2995c.getClass(), "{0} calling Spliterator.OfLong.tryAdvance((LongConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return interfaceC2995c.mo136i(new C2989p(consumer));
    }

    /* renamed from: m */
    public static Optional m616m(Optional optional) {
        if (optional == null) {
            return null;
        }
        return optional.isPresent() ? Optional.m629of(optional.get()) : Optional.empty();
    }

    /* renamed from: n */
    public static C2981i m615n(OptionalDouble optionalDouble) {
        if (optionalDouble == null) {
            return null;
        }
        return optionalDouble.isPresent() ? C2981i.m550d(optionalDouble.getAsDouble()) : C2981i.m553a();
    }

    /* renamed from: o */
    public static C2982j m614o(OptionalInt optionalInt) {
        if (optionalInt == null) {
            return null;
        }
        return optionalInt.isPresent() ? C2982j.m546d(optionalInt.getAsInt()) : C2982j.m549a();
    }

    /* renamed from: p */
    public static C2983k m613p(OptionalLong optionalLong) {
        if (optionalLong == null) {
            return null;
        }
        return optionalLong.isPresent() ? C2983k.m542d(optionalLong.getAsLong()) : C2983k.m545a();
    }

    /* renamed from: q */
    public static Optional m612q(Optional optional) {
        if (optional == null) {
            return null;
        }
        return optional.isPresent() ? Optional.of(optional.get()) : Optional.empty();
    }

    /* renamed from: r */
    public static OptionalDouble m611r(C2981i c2981i) {
        if (c2981i == null) {
            return null;
        }
        return c2981i.m551c() ? OptionalDouble.of(c2981i.m552b()) : OptionalDouble.empty();
    }

    /* renamed from: s */
    public static OptionalInt m610s(C2982j c2982j) {
        if (c2982j == null) {
            return null;
        }
        return c2982j.m547c() ? OptionalInt.of(c2982j.m548b()) : OptionalInt.empty();
    }

    /* renamed from: t */
    public static OptionalLong m609t(C2983k c2983k) {
        if (c2983k == null) {
            return null;
        }
        return c2983k.m543c() ? OptionalLong.of(c2983k.m544b()) : OptionalLong.empty();
    }

    /* renamed from: u */
    public static boolean m608u(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* renamed from: v */
    public static void m607v(List list, Comparator comparator) {
        if (DesugarCollections.f634b.isInstance(list)) {
            DesugarCollections.m646d(list, comparator);
            return;
        }
        Object[] array = list.toArray();
        Arrays.sort(array, comparator);
        ListIterator listIterator = list.listIterator();
        for (Object obj : array) {
            listIterator.next();
            listIterator.set(obj);
        }
    }
}
