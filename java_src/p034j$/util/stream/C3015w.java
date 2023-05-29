package p034j$.util.stream;

import p034j$.util.function.InterfaceC2714u;
/* renamed from: j$.util.stream.w */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3015w implements InterfaceC2714u {

    /* renamed from: a */
    public static final /* synthetic */ C3015w f1075a = new C3015w();

    private /* synthetic */ C3015w() {
    }

    @Override // p034j$.util.function.InterfaceC2714u
    public final void accept(Object obj, double d) {
        double[] dArr = (double[]) obj;
        AbstractC2949l.m377b(dArr, d);
        dArr[2] = dArr[2] + d;
    }
}
