package p033j$.util.stream;

import p033j$.util.AbstractC2916I;
import p033j$.util.InterfaceC2992s;
import p033j$.util.InterfaceC3299t;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2966m;
/* renamed from: j$.util.stream.W1 */
/* loaded from: classes2.dex */
final class C3124W1 extends AbstractC3146a2 implements InterfaceC3265u1 {
    @Override // p033j$.util.stream.InterfaceC2998A1
    /* renamed from: a */
    public /* synthetic */ void mo340i(Double[] dArr, int i) {
        AbstractC3229o1.m370h(this, dArr, i);
    }

    @Override // p033j$.util.stream.AbstractC3146a2, p033j$.util.stream.InterfaceC2998A1
    /* renamed from: b */
    public InterfaceC3295z1 mo298b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.InterfaceC3295z1
    /* renamed from: e */
    public Object mo295e() {
        double[] dArr;
        dArr = AbstractC3284x2.f1184g;
        return dArr;
    }

    @Override // p033j$.util.stream.AbstractC3146a2, p033j$.util.stream.InterfaceC2998A1
    /* renamed from: f */
    public /* synthetic */ InterfaceC3265u1 mo336r(long j, long j2, InterfaceC2966m interfaceC2966m) {
        return AbstractC3229o1.m364n(this, j, j2, interfaceC2966m);
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC3229o1.m367k(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    public InterfaceC3299t spliterator() {
        return AbstractC2916I.m643b();
    }

    @Override // p033j$.util.stream.AbstractC3146a2, p033j$.util.stream.InterfaceC2998A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2998A1 mo298b(int i) {
        mo298b(i);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    public InterfaceC2992s spliterator() {
        return AbstractC2916I.m643b();
    }
}
