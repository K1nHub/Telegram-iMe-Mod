package p033j$.util.stream;

import java.util.Collection;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import p033j$.util.Spliterator;
import p033j$.util.concurrent.C2804a;
import p033j$.util.concurrent.ConcurrentHashMap;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2834x;
/* renamed from: j$.util.stream.s */
/* loaded from: classes2.dex */
class C3104s extends AbstractC3012c3 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3104s(AbstractC3008c abstractC3008c, EnumC3025e4 enumC3025e4, int i) {
        super(abstractC3008c, enumC3025e4, i);
    }

    @Override // p033j$.util.stream.AbstractC3008c
    /* renamed from: D0 */
    InterfaceC2851A1 mo348D0(AbstractC3143y2 abstractC3143y2, Spliterator spliterator, IntFunction intFunction) {
        if (EnumC3019d4.DISTINCT.m483d(abstractC3143y2.mo353r0())) {
            return abstractC3143y2.mo356o0(spliterator, false, intFunction);
        }
        if (EnumC3019d4.ORDERED.m483d(abstractC3143y2.mo353r0())) {
            return m391K0(abstractC3143y2, spliterator);
        }
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        new C3075n0(new C3080o(atomicBoolean, concurrentHashMap), false).mo424c(abstractC3143y2, spliterator);
        Collection keySet = concurrentHashMap.keySet();
        if (atomicBoolean.get()) {
            HashSet hashSet = new HashSet(keySet);
            hashSet.add(null);
            keySet = hashSet;
        }
        return new C2875E1(keySet);
    }

    @Override // p033j$.util.stream.AbstractC3008c
    /* renamed from: E0 */
    Spliterator mo347E0(AbstractC3143y2 abstractC3143y2, Spliterator spliterator) {
        return EnumC3019d4.DISTINCT.m483d(abstractC3143y2.mo353r0()) ? abstractC3143y2.mo349v0(spliterator) : EnumC3019d4.ORDERED.m483d(abstractC3143y2.mo353r0()) ? ((C2875E1) m391K0(abstractC3143y2, spliterator)).spliterator() : new C3073m4(abstractC3143y2.mo349v0(spliterator));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3008c
    /* renamed from: G0 */
    public InterfaceC3072m3 mo346G0(int i, InterfaceC3072m3 interfaceC3072m3) {
        Objects.requireNonNull(interfaceC3072m3);
        return EnumC3019d4.DISTINCT.m483d(i) ? interfaceC3072m3 : EnumC3019d4.SORTED.m483d(i) ? new C3092q(this, interfaceC3072m3) : new C3098r(this, interfaceC3072m3);
    }

    /* renamed from: K0 */
    InterfaceC2851A1 m391K0(AbstractC3143y2 abstractC3143y2, Spliterator spliterator) {
        C3086p c3086p = new InterfaceC2834x() { // from class: j$.util.stream.p
            @Override // p033j$.util.function.InterfaceC2834x
            public final Object get() {
                return new LinkedHashSet();
            }
        };
        C3068m c3068m = new BiConsumer() { // from class: j$.util.stream.m
            @Override // p033j$.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((LinkedHashSet) obj).add(obj2);
            }

            @Override // p033j$.util.function.BiConsumer
            /* renamed from: b */
            public BiConsumer mo173b(BiConsumer biConsumer) {
                Objects.requireNonNull(biConsumer);
                return new C2804a(this, biConsumer);
            }
        };
        return new C2875E1((Collection) new C3149z2(EnumC3025e4.REFERENCE, new BiConsumer() { // from class: j$.util.stream.n
            @Override // p033j$.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((LinkedHashSet) obj).addAll((LinkedHashSet) obj2);
            }

            @Override // p033j$.util.function.BiConsumer
            /* renamed from: b */
            public BiConsumer mo173b(BiConsumer biConsumer) {
                Objects.requireNonNull(biConsumer);
                return new C2804a(this, biConsumer);
            }
        }, c3068m, c3086p).mo424c(abstractC3143y2, spliterator));
    }
}
