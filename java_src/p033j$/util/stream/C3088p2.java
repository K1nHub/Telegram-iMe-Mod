package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.C2820k;
import p033j$.util.function.InterfaceC2821l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.p2 */
/* loaded from: classes2.dex */
public final class C3088p2 extends AbstractC3106s2 implements InterfaceC3059k3 {

    /* renamed from: h */
    private final int[] f1152h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3088p2(Spliterator spliterator, AbstractC3142y2 abstractC3142y2, int[] iArr) {
        super(spliterator, abstractC3142y2, iArr.length);
        this.f1152h = iArr;
    }

    C3088p2(C3088p2 c3088p2, Spliterator spliterator, long j, long j2) {
        super(c3088p2, spliterator, j, j2, c3088p2.f1152h.length);
        this.f1152h = c3088p2.f1152h;
    }

    @Override // p033j$.util.stream.AbstractC3106s2, p033j$.util.stream.InterfaceC3071m3
    public void accept(int i) {
        int i2 = this.f1188f;
        if (i2 >= this.f1189g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1188f));
        }
        int[] iArr = this.f1152h;
        this.f1188f = i2 + 1;
        iArr[i2] = i;
    }

    @Override // p033j$.util.stream.AbstractC3106s2
    /* renamed from: b */
    AbstractC3106s2 mo394b(Spliterator spliterator, long j, long j2) {
        return new C3088p2(this, spliterator, j, j2);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: c */
    public /* synthetic */ void accept(Integer num) {
        AbstractC3081o1.m425b(this, num);
    }

    @Override // p033j$.util.function.InterfaceC2821l
    /* renamed from: k */
    public InterfaceC2821l mo238k(InterfaceC2821l interfaceC2821l) {
        Objects.requireNonNull(interfaceC2821l);
        return new C2820k(this, interfaceC2821l);
    }
}
