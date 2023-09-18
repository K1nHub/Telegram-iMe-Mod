package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.InterfaceC2908s;
import p033j$.util.function.C2874e;
import p033j$.util.function.InterfaceC2875f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.o2 */
/* loaded from: classes2.dex */
public final class C3146o2 extends AbstractC3170s2 implements InterfaceC3117j3 {

    /* renamed from: h */
    private final double[] f1097h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3146o2(InterfaceC2908s interfaceC2908s, AbstractC3206y2 abstractC3206y2, double[] dArr) {
        super(interfaceC2908s, abstractC3206y2, dArr.length);
        this.f1097h = dArr;
    }

    C3146o2(C3146o2 c3146o2, InterfaceC2908s interfaceC2908s, long j, long j2) {
        super(c3146o2, interfaceC2908s, j, j2, c3146o2.f1097h.length);
        this.f1097h = c3146o2.f1097h;
    }

    @Override // p033j$.util.stream.AbstractC3170s2, p033j$.util.stream.InterfaceC3135m3
    public void accept(double d) {
        int i = this.f1139f;
        if (i >= this.f1140g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1139f));
        }
        double[] dArr = this.f1097h;
        this.f1139f = i + 1;
        dArr[i] = d;
    }

    @Override // p033j$.util.stream.AbstractC3170s2
    /* renamed from: b */
    AbstractC3170s2 mo345b(InterfaceC2908s interfaceC2908s, long j, long j2) {
        return new C3146o2(this, interfaceC2908s, j, j2);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: c */
    public /* synthetic */ void accept(Double d) {
        AbstractC3145o1.m377a(this, d);
    }

    @Override // p033j$.util.function.InterfaceC2875f
    /* renamed from: j */
    public InterfaceC2875f mo105j(InterfaceC2875f interfaceC2875f) {
        Objects.requireNonNull(interfaceC2875f);
        return new C2874e(this, interfaceC2875f);
    }
}
