package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.InterfaceC2908s;
import p033j$.util.function.C2880k;
import p033j$.util.function.InterfaceC2881l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.p2 */
/* loaded from: classes2.dex */
public final class C3152p2 extends AbstractC3170s2 implements InterfaceC3123k3 {

    /* renamed from: h */
    private final int[] f1103h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3152p2(InterfaceC2908s interfaceC2908s, AbstractC3206y2 abstractC3206y2, int[] iArr) {
        super(interfaceC2908s, abstractC3206y2, iArr.length);
        this.f1103h = iArr;
    }

    C3152p2(C3152p2 c3152p2, InterfaceC2908s interfaceC2908s, long j, long j2) {
        super(c3152p2, interfaceC2908s, j, j2, c3152p2.f1103h.length);
        this.f1103h = c3152p2.f1103h;
    }

    @Override // p033j$.util.stream.AbstractC3170s2, p033j$.util.stream.InterfaceC3135m3
    public void accept(int i) {
        int i2 = this.f1139f;
        if (i2 >= this.f1140g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1139f));
        }
        int[] iArr = this.f1103h;
        this.f1139f = i2 + 1;
        iArr[i2] = i;
    }

    @Override // p033j$.util.stream.AbstractC3170s2
    /* renamed from: b */
    AbstractC3170s2 mo345b(InterfaceC2908s interfaceC2908s, long j, long j2) {
        return new C3152p2(this, interfaceC2908s, j, j2);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: c */
    public /* synthetic */ void accept(Integer num) {
        AbstractC3145o1.m376b(this, num);
    }

    @Override // p033j$.util.function.InterfaceC2881l
    /* renamed from: l */
    public InterfaceC2881l mo183l(InterfaceC2881l interfaceC2881l) {
        Objects.requireNonNull(interfaceC2881l);
        return new C2880k(this, interfaceC2881l);
    }
}
