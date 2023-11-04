package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.C2819e;
import p033j$.util.function.InterfaceC2820f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.o2 */
/* loaded from: classes2.dex */
public final class C3087o2 extends AbstractC3111s2 implements InterfaceC3058j3 {

    /* renamed from: h */
    private final double[] f1146h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3087o2(Spliterator spliterator, AbstractC3147y2 abstractC3147y2, double[] dArr) {
        super(spliterator, abstractC3147y2, dArr.length);
        this.f1146h = dArr;
    }

    C3087o2(C3087o2 c3087o2, Spliterator spliterator, long j, long j2) {
        super(c3087o2, spliterator, j, j2, c3087o2.f1146h.length);
        this.f1146h = c3087o2.f1146h;
    }

    @Override // p033j$.util.stream.AbstractC3111s2, p033j$.util.stream.InterfaceC3076m3
    public void accept(double d) {
        int i = this.f1188f;
        if (i >= this.f1189g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1188f));
        }
        double[] dArr = this.f1146h;
        this.f1188f = i + 1;
        dArr[i] = d;
    }

    @Override // p033j$.util.stream.AbstractC3111s2
    /* renamed from: b */
    AbstractC3111s2 mo391b(Spliterator spliterator, long j, long j2) {
        return new C3087o2(this, spliterator, j, j2);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: c */
    public /* synthetic */ void accept(Double d) {
        AbstractC3086o1.m423a(this, d);
    }

    @Override // p033j$.util.function.InterfaceC2820f
    /* renamed from: j */
    public InterfaceC2820f mo158j(InterfaceC2820f interfaceC2820f) {
        Objects.requireNonNull(interfaceC2820f);
        return new C2819e(this, interfaceC2820f);
    }
}
