package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2688s;
import p034j$.util.function.C2660k;
import p034j$.util.function.InterfaceC2661l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.p2 */
/* loaded from: classes2.dex */
public final class C2932p2 extends AbstractC2950s2 implements InterfaceC2903k3 {

    /* renamed from: h */
    private final int[] f1014h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2932p2(InterfaceC2688s interfaceC2688s, AbstractC2986y2 abstractC2986y2, int[] iArr) {
        super(interfaceC2688s, abstractC2986y2, iArr.length);
        this.f1014h = iArr;
    }

    C2932p2(C2932p2 c2932p2, InterfaceC2688s interfaceC2688s, long j, long j2) {
        super(c2932p2, interfaceC2688s, j, j2, c2932p2.f1014h.length);
        this.f1014h = c2932p2.f1014h;
    }

    @Override // p034j$.util.stream.AbstractC2950s2, p034j$.util.stream.InterfaceC2915m3
    public void accept(int i) {
        int i2 = this.f1050f;
        if (i2 >= this.f1051g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1050f));
        }
        int[] iArr = this.f1014h;
        this.f1050f = i2 + 1;
        iArr[i2] = i;
    }

    @Override // p034j$.util.stream.AbstractC2950s2
    /* renamed from: b */
    AbstractC2950s2 mo322b(InterfaceC2688s interfaceC2688s, long j, long j2) {
        return new C2932p2(this, interfaceC2688s, j, j2);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: c */
    public /* synthetic */ void accept(Integer num) {
        AbstractC2925o1.m353b(this, num);
    }

    @Override // p034j$.util.function.InterfaceC2661l
    /* renamed from: l */
    public InterfaceC2661l mo160l(InterfaceC2661l interfaceC2661l) {
        Objects.requireNonNull(interfaceC2661l);
        return new C2660k(this, interfaceC2661l);
    }
}
