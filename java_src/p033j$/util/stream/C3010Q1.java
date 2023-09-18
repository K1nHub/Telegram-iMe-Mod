package p033j$.util.stream;

import p033j$.util.InterfaceC2908s;
import p033j$.util.InterfaceC3215t;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2882m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.Q1 */
/* loaded from: classes2.dex */
public final class C3010Q1 extends AbstractC3015R1 implements InterfaceC3205y1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3010Q1(InterfaceC3205y1 interfaceC3205y1, InterfaceC3205y1 interfaceC3205y12) {
        super(interfaceC3205y1, interfaceC3205y12);
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    /* renamed from: a */
    public /* synthetic */ void mo340i(Long[] lArr, int i) {
        AbstractC3145o1.m368j(this, lArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC3211z1
    /* renamed from: f */
    public long[] mo297c(int i) {
        return new long[i];
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC3145o1.m365m(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    /* renamed from: h */
    public /* synthetic */ InterfaceC3205y1 mo336r(long j, long j2, InterfaceC2882m interfaceC2882m) {
        return AbstractC3145o1.m362p(this, j, j2, interfaceC2882m);
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    public InterfaceC3215t spliterator() {
        return new C3104h2(this);
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    public InterfaceC2908s spliterator() {
        return new C3104h2(this);
    }
}
