package p034j$.util.stream;

import p034j$.util.function.InterfaceC2593u;
/* renamed from: j$.util.stream.w */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2894w implements InterfaceC2593u {

    /* renamed from: a */
    public static final /* synthetic */ C2894w f1071a = new C2894w();

    private /* synthetic */ C2894w() {
    }

    @Override // p034j$.util.function.InterfaceC2593u
    public final void accept(Object obj, double d) {
        double[] dArr = (double[]) obj;
        AbstractC2828l.m392b(dArr, d);
        dArr[2] = dArr[2] + d;
    }
}
