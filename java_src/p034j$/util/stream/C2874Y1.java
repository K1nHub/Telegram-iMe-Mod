package p034j$.util.stream;

import p034j$.util.AbstractC2656I;
import p034j$.util.InterfaceC2732s;
import p034j$.util.InterfaceC3039t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2706m;
/* renamed from: j$.util.stream.Y1 */
/* loaded from: classes2.dex */
final class C2874Y1 extends AbstractC2886a2 implements InterfaceC3029y1 {
    @Override // p034j$.util.stream.InterfaceC2738A1
    /* renamed from: a */
    public /* synthetic */ void mo322i(Long[] lArr, int i) {
        AbstractC2969o1.m350j(this, lArr, i);
    }

    @Override // p034j$.util.stream.AbstractC2886a2, p034j$.util.stream.InterfaceC2738A1
    /* renamed from: b */
    public InterfaceC3035z1 mo280b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p034j$.util.stream.InterfaceC3035z1
    /* renamed from: e */
    public Object mo277e() {
        long[] jArr;
        jArr = AbstractC3024x2.f1088f;
        return jArr;
    }

    @Override // p034j$.util.stream.AbstractC2886a2, p034j$.util.stream.InterfaceC2738A1
    /* renamed from: f */
    public /* synthetic */ InterfaceC3029y1 mo318r(long j, long j2, InterfaceC2706m interfaceC2706m) {
        return AbstractC2969o1.m344p(this, j, j2, interfaceC2706m);
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2969o1.m347m(this, consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    public InterfaceC3039t spliterator() {
        return AbstractC2656I.m623d();
    }

    @Override // p034j$.util.stream.AbstractC2886a2, p034j$.util.stream.InterfaceC2738A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2738A1 mo280b(int i) {
        mo280b(i);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    public InterfaceC2732s spliterator() {
        return AbstractC2656I.m623d();
    }
}
