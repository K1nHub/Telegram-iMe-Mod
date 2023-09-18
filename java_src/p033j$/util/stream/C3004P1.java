package p033j$.util.stream;

import p033j$.util.InterfaceC2908s;
import p033j$.util.InterfaceC3215t;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2882m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.P1 */
/* loaded from: classes2.dex */
public final class C3004P1 extends AbstractC3015R1 implements InterfaceC3193w1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3004P1(InterfaceC3193w1 interfaceC3193w1, InterfaceC3193w1 interfaceC3193w12) {
        super(interfaceC3193w1, interfaceC3193w12);
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    /* renamed from: a */
    public /* synthetic */ void mo340i(Integer[] numArr, int i) {
        AbstractC3145o1.m369i(this, numArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC3211z1
    /* renamed from: f */
    public int[] mo297c(int i) {
        return new int[i];
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC3145o1.m366l(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    /* renamed from: h */
    public /* synthetic */ InterfaceC3193w1 mo336r(long j, long j2, InterfaceC2882m interfaceC2882m) {
        return AbstractC3145o1.m363o(this, j, j2, interfaceC2882m);
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    public InterfaceC3215t spliterator() {
        return new C3098g2(this);
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    public InterfaceC2908s spliterator() {
        return new C3098g2(this);
    }
}
