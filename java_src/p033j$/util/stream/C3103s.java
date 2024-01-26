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
import p033j$.util.function.InterfaceC2833x;
/* renamed from: j$.util.stream.s */
/* loaded from: classes2.dex */
class C3103s extends AbstractC3011c3 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3103s(AbstractC3007c abstractC3007c, EnumC3024e4 enumC3024e4, int i) {
        super(abstractC3007c, enumC3024e4, i);
    }

    @Override // p033j$.util.stream.AbstractC3007c
    /* renamed from: D0 */
    InterfaceC2850A1 mo352D0(AbstractC3142y2 abstractC3142y2, Spliterator spliterator, IntFunction intFunction) {
        if (EnumC3018d4.DISTINCT.m487d(abstractC3142y2.mo357r0())) {
            return abstractC3142y2.mo360o0(spliterator, false, intFunction);
        }
        if (EnumC3018d4.ORDERED.m487d(abstractC3142y2.mo357r0())) {
            return m395K0(abstractC3142y2, spliterator);
        }
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        new C3074n0(new C3079o(atomicBoolean, concurrentHashMap), false).mo428c(abstractC3142y2, spliterator);
        Collection keySet = concurrentHashMap.keySet();
        if (atomicBoolean.get()) {
            HashSet hashSet = new HashSet(keySet);
            hashSet.add(null);
            keySet = hashSet;
        }
        return new C2874E1(keySet);
    }

    @Override // p033j$.util.stream.AbstractC3007c
    /* renamed from: E0 */
    Spliterator mo351E0(AbstractC3142y2 abstractC3142y2, Spliterator spliterator) {
        return EnumC3018d4.DISTINCT.m487d(abstractC3142y2.mo357r0()) ? abstractC3142y2.mo353v0(spliterator) : EnumC3018d4.ORDERED.m487d(abstractC3142y2.mo357r0()) ? ((C2874E1) m395K0(abstractC3142y2, spliterator)).spliterator() : new C3072m4(abstractC3142y2.mo353v0(spliterator));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3007c
    /* renamed from: G0 */
    public InterfaceC3071m3 mo350G0(int i, InterfaceC3071m3 interfaceC3071m3) {
        Objects.requireNonNull(interfaceC3071m3);
        return EnumC3018d4.DISTINCT.m487d(i) ? interfaceC3071m3 : EnumC3018d4.SORTED.m487d(i) ? new C3091q(this, interfaceC3071m3) : new C3097r(this, interfaceC3071m3);
    }

    /* renamed from: K0 */
    InterfaceC2850A1 m395K0(AbstractC3142y2 abstractC3142y2, Spliterator spliterator) {
        C3085p c3085p = new InterfaceC2833x() { // from class: j$.util.stream.p
            @Override // p033j$.util.function.InterfaceC2833x
            public final Object get() {
                return new LinkedHashSet();
            }
        };
        C3067m c3067m = new BiConsumer() { // from class: j$.util.stream.m
            @Override // p033j$.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((LinkedHashSet) obj).add(obj2);
            }

            @Override // p033j$.util.function.BiConsumer
            public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
                return BiConsumer.CC.$default$andThen(this, biConsumer);
            }
        };
        return new C2874E1((Collection) new C3148z2(EnumC3024e4.REFERENCE, new BiConsumer() { // from class: j$.util.stream.n
            @Override // p033j$.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((LinkedHashSet) obj).addAll((LinkedHashSet) obj2);
            }

            @Override // p033j$.util.function.BiConsumer
            public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
                return BiConsumer.CC.$default$andThen(this, biConsumer);
            }
        }, c3067m, c3085p).mo428c(abstractC3142y2, spliterator));
    }
}
