package p033j$.util.stream;

import java.util.Collection;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import p033j$.util.InterfaceC2992s;
import p033j$.util.concurrent.C2947a;
import p033j$.util.concurrent.ConcurrentHashMap;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.InterfaceC2966m;
import p033j$.util.function.InterfaceC2978y;
/* renamed from: j$.util.stream.s */
/* loaded from: classes2.dex */
class C3251s extends AbstractC3159c3 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3251s(AbstractC3155c abstractC3155c, EnumC3172e4 enumC3172e4, int i) {
        super(abstractC3155c, enumC3172e4, i);
    }

    @Override // p033j$.util.stream.AbstractC3155c
    /* renamed from: E0 */
    InterfaceC2998A1 mo303E0(AbstractC3290y2 abstractC3290y2, InterfaceC2992s interfaceC2992s, InterfaceC2966m interfaceC2966m) {
        if (EnumC3166d4.DISTINCT.m438d(abstractC3290y2.mo308s0())) {
            return abstractC3290y2.mo311p0(interfaceC2992s, false, interfaceC2966m);
        }
        if (EnumC3166d4.ORDERED.m438d(abstractC3290y2.mo308s0())) {
            return m346L0(abstractC3290y2, interfaceC2992s);
        }
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        new C3222n0(new C3227o(atomicBoolean, concurrentHashMap), false).mo379c(abstractC3290y2, interfaceC2992s);
        Collection keySet = concurrentHashMap.keySet();
        if (atomicBoolean.get()) {
            HashSet hashSet = new HashSet(keySet);
            hashSet.add(null);
            keySet = hashSet;
        }
        return new C3022E1(keySet);
    }

    @Override // p033j$.util.stream.AbstractC3155c
    /* renamed from: F0 */
    InterfaceC2992s mo302F0(AbstractC3290y2 abstractC3290y2, InterfaceC2992s interfaceC2992s) {
        return EnumC3166d4.DISTINCT.m438d(abstractC3290y2.mo308s0()) ? abstractC3290y2.mo304w0(interfaceC2992s) : EnumC3166d4.ORDERED.m438d(abstractC3290y2.mo308s0()) ? ((C3022E1) m346L0(abstractC3290y2, interfaceC2992s)).spliterator() : new C3220m4(abstractC3290y2.mo304w0(interfaceC2992s));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3155c
    /* renamed from: H0 */
    public InterfaceC3219m3 mo301H0(int i, InterfaceC3219m3 interfaceC3219m3) {
        Objects.requireNonNull(interfaceC3219m3);
        return EnumC3166d4.DISTINCT.m438d(i) ? interfaceC3219m3 : EnumC3166d4.SORTED.m438d(i) ? new C3239q(this, interfaceC3219m3) : new C3245r(this, interfaceC3219m3);
    }

    /* renamed from: L0 */
    InterfaceC2998A1 m346L0(AbstractC3290y2 abstractC3290y2, InterfaceC2992s interfaceC2992s) {
        C3233p c3233p = new InterfaceC2978y() { // from class: j$.util.stream.p
            @Override // p033j$.util.function.InterfaceC2978y
            public final Object get() {
                return new LinkedHashSet();
            }
        };
        C3215m c3215m = new BiConsumer() { // from class: j$.util.stream.m
            @Override // p033j$.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((LinkedHashSet) obj).add(obj2);
            }

            @Override // p033j$.util.function.BiConsumer
            /* renamed from: b */
            public BiConsumer mo124b(BiConsumer biConsumer) {
                Objects.requireNonNull(biConsumer);
                return new C2947a(this, biConsumer);
            }
        };
        return new C3022E1((Collection) new C3296z2(EnumC3172e4.REFERENCE, new BiConsumer() { // from class: j$.util.stream.n
            @Override // p033j$.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((LinkedHashSet) obj).addAll((LinkedHashSet) obj2);
            }

            @Override // p033j$.util.function.BiConsumer
            /* renamed from: b */
            public BiConsumer mo124b(BiConsumer biConsumer) {
                Objects.requireNonNull(biConsumer);
                return new C2947a(this, biConsumer);
            }
        }, c3215m, c3233p).mo379c(abstractC3290y2, interfaceC2992s));
    }
}
