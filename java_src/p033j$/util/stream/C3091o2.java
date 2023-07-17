package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.C2819e;
import p033j$.util.function.InterfaceC2820f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.o2 */
/* loaded from: classes2.dex */
public final class C3091o2 extends AbstractC3115s2 implements InterfaceC3062j3 {

    /* renamed from: h */
    private final double[] f1093h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3091o2(InterfaceC2853s interfaceC2853s, AbstractC3151y2 abstractC3151y2, double[] dArr) {
        super(interfaceC2853s, abstractC3151y2, dArr.length);
        this.f1093h = dArr;
    }

    C3091o2(C3091o2 c3091o2, InterfaceC2853s interfaceC2853s, long j, long j2) {
        super(c3091o2, interfaceC2853s, j, j2, c3091o2.f1093h.length);
        this.f1093h = c3091o2.f1093h;
    }

    @Override // p033j$.util.stream.AbstractC3115s2, p033j$.util.stream.InterfaceC3080m3
    public void accept(double d) {
        int i = this.f1135f;
        if (i >= this.f1136g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1135f));
        }
        double[] dArr = this.f1093h;
        this.f1135f = i + 1;
        dArr[i] = d;
    }

    @Override // p033j$.util.stream.AbstractC3115s2
    /* renamed from: b */
    AbstractC3115s2 mo327b(InterfaceC2853s interfaceC2853s, long j, long j2) {
        return new C3091o2(this, interfaceC2853s, j, j2);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: c */
    public /* synthetic */ void accept(Double d) {
        AbstractC3090o1.m359a(this, d);
    }

    @Override // p033j$.util.function.InterfaceC2820f
    /* renamed from: j */
    public InterfaceC2820f mo87j(InterfaceC2820f interfaceC2820f) {
        Objects.requireNonNull(interfaceC2820f);
        return new C2819e(this, interfaceC2820f);
    }
}
