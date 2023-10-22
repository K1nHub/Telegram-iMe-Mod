package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.C2821k;
import p033j$.util.function.InterfaceC2822l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.p2 */
/* loaded from: classes2.dex */
public final class C3089p2 extends AbstractC3107s2 implements InterfaceC3060k3 {

    /* renamed from: h */
    private final int[] f1152h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3089p2(Spliterator spliterator, AbstractC3143y2 abstractC3143y2, int[] iArr) {
        super(spliterator, abstractC3143y2, iArr.length);
        this.f1152h = iArr;
    }

    C3089p2(C3089p2 c3089p2, Spliterator spliterator, long j, long j2) {
        super(c3089p2, spliterator, j, j2, c3089p2.f1152h.length);
        this.f1152h = c3089p2.f1152h;
    }

    @Override // p033j$.util.stream.AbstractC3107s2, p033j$.util.stream.InterfaceC3072m3
    public void accept(int i) {
        int i2 = this.f1188f;
        if (i2 >= this.f1189g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1188f));
        }
        int[] iArr = this.f1152h;
        this.f1188f = i2 + 1;
        iArr[i2] = i;
    }

    @Override // p033j$.util.stream.AbstractC3107s2
    /* renamed from: b */
    AbstractC3107s2 mo390b(Spliterator spliterator, long j, long j2) {
        return new C3089p2(this, spliterator, j, j2);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: c */
    public /* synthetic */ void accept(Integer num) {
        AbstractC3082o1.m421b(this, num);
    }

    @Override // p033j$.util.function.InterfaceC2822l
    /* renamed from: k */
    public InterfaceC2822l mo234k(InterfaceC2822l interfaceC2822l) {
        Objects.requireNonNull(interfaceC2822l);
        return new C2821k(this, interfaceC2822l);
    }
}
