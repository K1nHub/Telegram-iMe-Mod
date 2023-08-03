package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.C2825k;
import p033j$.util.function.InterfaceC2826l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.p2 */
/* loaded from: classes2.dex */
public final class C3097p2 extends AbstractC3115s2 implements InterfaceC3068k3 {

    /* renamed from: h */
    private final int[] f1102h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3097p2(InterfaceC2853s interfaceC2853s, AbstractC3151y2 abstractC3151y2, int[] iArr) {
        super(interfaceC2853s, abstractC3151y2, iArr.length);
        this.f1102h = iArr;
    }

    C3097p2(C3097p2 c3097p2, InterfaceC2853s interfaceC2853s, long j, long j2) {
        super(c3097p2, interfaceC2853s, j, j2, c3097p2.f1102h.length);
        this.f1102h = c3097p2.f1102h;
    }

    @Override // p033j$.util.stream.AbstractC3115s2, p033j$.util.stream.InterfaceC3080m3
    public void accept(int i) {
        int i2 = this.f1138f;
        if (i2 >= this.f1139g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1138f));
        }
        int[] iArr = this.f1102h;
        this.f1138f = i2 + 1;
        iArr[i2] = i;
    }

    @Override // p033j$.util.stream.AbstractC3115s2
    /* renamed from: b */
    AbstractC3115s2 mo345b(InterfaceC2853s interfaceC2853s, long j, long j2) {
        return new C3097p2(this, interfaceC2853s, j, j2);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: c */
    public /* synthetic */ void accept(Integer num) {
        AbstractC3090o1.m376b(this, num);
    }

    @Override // p033j$.util.function.InterfaceC2826l
    /* renamed from: l */
    public InterfaceC2826l mo183l(InterfaceC2826l interfaceC2826l) {
        Objects.requireNonNull(interfaceC2826l);
        return new C2825k(this, interfaceC2826l);
    }
}
