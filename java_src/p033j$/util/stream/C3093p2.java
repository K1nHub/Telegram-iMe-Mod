package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.C2825k;
import p033j$.util.function.InterfaceC2826l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.p2 */
/* loaded from: classes2.dex */
public final class C3093p2 extends AbstractC3111s2 implements InterfaceC3064k3 {

    /* renamed from: h */
    private final int[] f1152h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3093p2(Spliterator spliterator, AbstractC3147y2 abstractC3147y2, int[] iArr) {
        super(spliterator, abstractC3147y2, iArr.length);
        this.f1152h = iArr;
    }

    C3093p2(C3093p2 c3093p2, Spliterator spliterator, long j, long j2) {
        super(c3093p2, spliterator, j, j2, c3093p2.f1152h.length);
        this.f1152h = c3093p2.f1152h;
    }

    @Override // p033j$.util.stream.AbstractC3111s2, p033j$.util.stream.InterfaceC3076m3
    public void accept(int i) {
        int i2 = this.f1188f;
        if (i2 >= this.f1189g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1188f));
        }
        int[] iArr = this.f1152h;
        this.f1188f = i2 + 1;
        iArr[i2] = i;
    }

    @Override // p033j$.util.stream.AbstractC3111s2
    /* renamed from: b */
    AbstractC3111s2 mo391b(Spliterator spliterator, long j, long j2) {
        return new C3093p2(this, spliterator, j, j2);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: c */
    public /* synthetic */ void accept(Integer num) {
        AbstractC3086o1.m422b(this, num);
    }

    @Override // p033j$.util.function.InterfaceC2826l
    /* renamed from: k */
    public InterfaceC2826l mo235k(InterfaceC2826l interfaceC2826l) {
        Objects.requireNonNull(interfaceC2826l);
        return new C2825k(this, interfaceC2826l);
    }
}
