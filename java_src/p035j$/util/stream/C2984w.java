package p035j$.util.stream;

import p035j$.util.function.InterfaceC2683u;
/* renamed from: j$.util.stream.w */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2984w implements InterfaceC2683u {

    /* renamed from: a */
    public static final /* synthetic */ C2984w f1077a = new C2984w();

    private /* synthetic */ C2984w() {
    }

    @Override // p035j$.util.function.InterfaceC2683u
    public final void accept(Object obj, double d) {
        double[] dArr = (double[]) obj;
        AbstractC2918l.m386b(dArr, d);
        dArr[2] = dArr[2] + d;
    }
}
