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
import p033j$.util.function.InterfaceC2838x;
/* renamed from: j$.util.stream.s */
/* loaded from: classes2.dex */
class C3108s extends AbstractC3016c3 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3108s(AbstractC3012c abstractC3012c, EnumC3029e4 enumC3029e4, int i) {
        super(abstractC3012c, enumC3029e4, i);
    }

    @Override // p033j$.util.stream.AbstractC3012c
    /* renamed from: D0 */
    InterfaceC2855A1 mo349D0(AbstractC3147y2 abstractC3147y2, Spliterator spliterator, IntFunction intFunction) {
        if (EnumC3023d4.DISTINCT.m484d(abstractC3147y2.mo354r0())) {
            return abstractC3147y2.mo357o0(spliterator, false, intFunction);
        }
        if (EnumC3023d4.ORDERED.m484d(abstractC3147y2.mo354r0())) {
            return m392K0(abstractC3147y2, spliterator);
        }
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        new C3079n0(new C3084o(atomicBoolean, concurrentHashMap), false).mo425c(abstractC3147y2, spliterator);
        Collection keySet = concurrentHashMap.keySet();
        if (atomicBoolean.get()) {
            HashSet hashSet = new HashSet(keySet);
            hashSet.add(null);
            keySet = hashSet;
        }
        return new C2879E1(keySet);
    }

    @Override // p033j$.util.stream.AbstractC3012c
    /* renamed from: E0 */
    Spliterator mo348E0(AbstractC3147y2 abstractC3147y2, Spliterator spliterator) {
        return EnumC3023d4.DISTINCT.m484d(abstractC3147y2.mo354r0()) ? abstractC3147y2.mo350v0(spliterator) : EnumC3023d4.ORDERED.m484d(abstractC3147y2.mo354r0()) ? ((C2879E1) m392K0(abstractC3147y2, spliterator)).spliterator() : new C3077m4(abstractC3147y2.mo350v0(spliterator));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3012c
    /* renamed from: G0 */
    public InterfaceC3076m3 mo347G0(int i, InterfaceC3076m3 interfaceC3076m3) {
        Objects.requireNonNull(interfaceC3076m3);
        return EnumC3023d4.DISTINCT.m484d(i) ? interfaceC3076m3 : EnumC3023d4.SORTED.m484d(i) ? new C3096q(this, interfaceC3076m3) : new C3102r(this, interfaceC3076m3);
    }

    /* renamed from: K0 */
    InterfaceC2855A1 m392K0(AbstractC3147y2 abstractC3147y2, Spliterator spliterator) {
        C3090p c3090p = new InterfaceC2838x() { // from class: j$.util.stream.p
            @Override // p033j$.util.function.InterfaceC2838x
            public final Object get() {
                return new LinkedHashSet();
            }
        };
        C3072m c3072m = new BiConsumer() { // from class: j$.util.stream.m
            @Override // p033j$.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((LinkedHashSet) obj).add(obj2);
            }

            @Override // p033j$.util.function.BiConsumer
            public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
                return BiConsumer.CC.$default$andThen(this, biConsumer);
            }
        };
        return new C2879E1((Collection) new C3153z2(EnumC3029e4.REFERENCE, new BiConsumer() { // from class: j$.util.stream.n
            @Override // p033j$.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((LinkedHashSet) obj).addAll((LinkedHashSet) obj2);
            }

            @Override // p033j$.util.function.BiConsumer
            public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
                return BiConsumer.CC.$default$andThen(this, biConsumer);
            }
        }, c3072m, c3090p).mo425c(abstractC3147y2, spliterator));
    }
}
