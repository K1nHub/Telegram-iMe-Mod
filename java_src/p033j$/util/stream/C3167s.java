package p033j$.util.stream;

import java.util.Collection;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import p033j$.util.InterfaceC2908s;
import p033j$.util.concurrent.C2863a;
import p033j$.util.concurrent.ConcurrentHashMap;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.InterfaceC2882m;
import p033j$.util.function.InterfaceC2894y;
/* renamed from: j$.util.stream.s */
/* loaded from: classes2.dex */
class C3167s extends AbstractC3075c3 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3167s(AbstractC3071c abstractC3071c, EnumC3088e4 enumC3088e4, int i) {
        super(abstractC3071c, enumC3088e4, i);
    }

    @Override // p033j$.util.stream.AbstractC3071c
    /* renamed from: E0 */
    InterfaceC2914A1 mo303E0(AbstractC3206y2 abstractC3206y2, InterfaceC2908s interfaceC2908s, InterfaceC2882m interfaceC2882m) {
        if (EnumC3082d4.DISTINCT.m438d(abstractC3206y2.mo308s0())) {
            return abstractC3206y2.mo311p0(interfaceC2908s, false, interfaceC2882m);
        }
        if (EnumC3082d4.ORDERED.m438d(abstractC3206y2.mo308s0())) {
            return m346L0(abstractC3206y2, interfaceC2908s);
        }
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        new C3138n0(new C3143o(atomicBoolean, concurrentHashMap), false).mo379c(abstractC3206y2, interfaceC2908s);
        Collection keySet = concurrentHashMap.keySet();
        if (atomicBoolean.get()) {
            HashSet hashSet = new HashSet(keySet);
            hashSet.add(null);
            keySet = hashSet;
        }
        return new C2938E1(keySet);
    }

    @Override // p033j$.util.stream.AbstractC3071c
    /* renamed from: F0 */
    InterfaceC2908s mo302F0(AbstractC3206y2 abstractC3206y2, InterfaceC2908s interfaceC2908s) {
        return EnumC3082d4.DISTINCT.m438d(abstractC3206y2.mo308s0()) ? abstractC3206y2.mo304w0(interfaceC2908s) : EnumC3082d4.ORDERED.m438d(abstractC3206y2.mo308s0()) ? ((C2938E1) m346L0(abstractC3206y2, interfaceC2908s)).spliterator() : new C3136m4(abstractC3206y2.mo304w0(interfaceC2908s));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3071c
    /* renamed from: H0 */
    public InterfaceC3135m3 mo301H0(int i, InterfaceC3135m3 interfaceC3135m3) {
        Objects.requireNonNull(interfaceC3135m3);
        return EnumC3082d4.DISTINCT.m438d(i) ? interfaceC3135m3 : EnumC3082d4.SORTED.m438d(i) ? new C3155q(this, interfaceC3135m3) : new C3161r(this, interfaceC3135m3);
    }

    /* renamed from: L0 */
    InterfaceC2914A1 m346L0(AbstractC3206y2 abstractC3206y2, InterfaceC2908s interfaceC2908s) {
        C3149p c3149p = new InterfaceC2894y() { // from class: j$.util.stream.p
            @Override // p033j$.util.function.InterfaceC2894y
            public final Object get() {
                return new LinkedHashSet();
            }
        };
        C3131m c3131m = new BiConsumer() { // from class: j$.util.stream.m
            @Override // p033j$.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((LinkedHashSet) obj).add(obj2);
            }

            @Override // p033j$.util.function.BiConsumer
            /* renamed from: b */
            public BiConsumer mo124b(BiConsumer biConsumer) {
                Objects.requireNonNull(biConsumer);
                return new C2863a(this, biConsumer);
            }
        };
        return new C2938E1((Collection) new C3212z2(EnumC3088e4.REFERENCE, new BiConsumer() { // from class: j$.util.stream.n
            @Override // p033j$.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((LinkedHashSet) obj).addAll((LinkedHashSet) obj2);
            }

            @Override // p033j$.util.function.BiConsumer
            /* renamed from: b */
            public BiConsumer mo124b(BiConsumer biConsumer) {
                Objects.requireNonNull(biConsumer);
                return new C2863a(this, biConsumer);
            }
        }, c3131m, c3149p).mo379c(abstractC3206y2, interfaceC2908s));
    }
}
