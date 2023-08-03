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
    private final double[] f1096h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3091o2(InterfaceC2853s interfaceC2853s, AbstractC3151y2 abstractC3151y2, double[] dArr) {
        super(interfaceC2853s, abstractC3151y2, dArr.length);
        this.f1096h = dArr;
    }

    C3091o2(C3091o2 c3091o2, InterfaceC2853s interfaceC2853s, long j, long j2) {
        super(c3091o2, interfaceC2853s, j, j2, c3091o2.f1096h.length);
        this.f1096h = c3091o2.f1096h;
    }

    @Override // p033j$.util.stream.AbstractC3115s2, p033j$.util.stream.InterfaceC3080m3
    public void accept(double d) {
        int i = this.f1138f;
        if (i >= this.f1139g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1138f));
        }
        double[] dArr = this.f1096h;
        this.f1138f = i + 1;
        dArr[i] = d;
    }

    @Override // p033j$.util.stream.AbstractC3115s2
    /* renamed from: b */
    AbstractC3115s2 mo345b(InterfaceC2853s interfaceC2853s, long j, long j2) {
        return new C3091o2(this, interfaceC2853s, j, j2);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: c */
    public /* synthetic */ void accept(Double d) {
        AbstractC3090o1.m377a(this, d);
    }

    @Override // p033j$.util.function.InterfaceC2820f
    /* renamed from: j */
    public InterfaceC2820f mo105j(InterfaceC2820f interfaceC2820f) {
        Objects.requireNonNull(interfaceC2820f);
        return new C2819e(this, interfaceC2820f);
    }
}
