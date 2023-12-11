package p033j$.util.stream;

import java.util.Collection;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import p033j$.util.Spliterator;
import p033j$.util.concurrent.ConcurrentHashMap;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2835x;
/* renamed from: j$.util.stream.s */
/* loaded from: classes2.dex */
class C3105s extends AbstractC3013c3 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3105s(AbstractC3009c abstractC3009c, EnumC3026e4 enumC3026e4, int i) {
        super(abstractC3009c, enumC3026e4, i);
    }

    @Override // p033j$.util.stream.AbstractC3009c
    /* renamed from: D0 */
    InterfaceC2852A1 mo349D0(AbstractC3144y2 abstractC3144y2, Spliterator spliterator, IntFunction intFunction) {
        if (EnumC3020d4.DISTINCT.m484d(abstractC3144y2.mo354r0())) {
            return abstractC3144y2.mo357o0(spliterator, false, intFunction);
        }
        if (EnumC3020d4.ORDERED.m484d(abstractC3144y2.mo354r0())) {
            return m392K0(abstractC3144y2, spliterator);
        }
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        new C3076n0(new C3081o(atomicBoolean, concurrentHashMap), false).mo425c(abstractC3144y2, spliterator);
        Collection keySet = concurrentHashMap.keySet();
        if (atomicBoolean.get()) {
            HashSet hashSet = new HashSet(keySet);
            hashSet.add(null);
            keySet = hashSet;
        }
        return new C2876E1(keySet);
    }

    @Override // p033j$.util.stream.AbstractC3009c
    /* renamed from: E0 */
    Spliterator mo348E0(AbstractC3144y2 abstractC3144y2, Spliterator spliterator) {
        return EnumC3020d4.DISTINCT.m484d(abstractC3144y2.mo354r0()) ? abstractC3144y2.mo350v0(spliterator) : EnumC3020d4.ORDERED.m484d(abstractC3144y2.mo354r0()) ? ((C2876E1) m392K0(abstractC3144y2, spliterator)).spliterator() : new C3074m4(abstractC3144y2.mo350v0(spliterator));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3009c
    /* renamed from: G0 */
    public InterfaceC3073m3 mo347G0(int i, InterfaceC3073m3 interfaceC3073m3) {
        Objects.requireNonNull(interfaceC3073m3);
        return EnumC3020d4.DISTINCT.m484d(i) ? interfaceC3073m3 : EnumC3020d4.SORTED.m484d(i) ? new C3093q(this, interfaceC3073m3) : new C3099r(this, interfaceC3073m3);
    }

    /* renamed from: K0 */
    InterfaceC2852A1 m392K0(AbstractC3144y2 abstractC3144y2, Spliterator spliterator) {
        C3087p c3087p = new InterfaceC2835x() { // from class: j$.util.stream.p
            @Override // p033j$.util.function.InterfaceC2835x
            public final Object get() {
                return new LinkedHashSet();
            }
        };
        C3069m c3069m = new BiConsumer() { // from class: j$.util.stream.m
            @Override // p033j$.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((LinkedHashSet) obj).add(obj2);
            }

            @Override // p033j$.util.function.BiConsumer
            public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
                return BiConsumer.CC.$default$andThen(this, biConsumer);
            }
        };
        return new C2876E1((Collection) new C3150z2(EnumC3026e4.REFERENCE, new BiConsumer() { // from class: j$.util.stream.n
            @Override // p033j$.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((LinkedHashSet) obj).addAll((LinkedHashSet) obj2);
            }

            @Override // p033j$.util.function.BiConsumer
            public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
                return BiConsumer.CC.$default$andThen(this, biConsumer);
            }
        }, c3069m, c3087p).mo425c(abstractC3144y2, spliterator));
    }
}
