package p034j$.util.stream;

import p034j$.util.function.InterfaceC2709u;
/* renamed from: j$.util.stream.w */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3010w implements InterfaceC2709u {

    /* renamed from: a */
    public static final /* synthetic */ C3010w f1075a = new C3010w();

    private /* synthetic */ C3010w() {
    }

    @Override // p034j$.util.function.InterfaceC2709u
    public final void accept(Object obj, double d) {
        double[] dArr = (double[]) obj;
        AbstractC2944l.m377b(dArr, d);
        dArr[2] = dArr[2] + d;
    }
}
