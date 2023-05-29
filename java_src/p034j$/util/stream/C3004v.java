package p034j$.util.stream;

import p034j$.util.function.InterfaceC2709u;
/* renamed from: j$.util.stream.v */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3004v implements InterfaceC2709u {

    /* renamed from: a */
    public static final /* synthetic */ C3004v f1067a = new C3004v();

    private /* synthetic */ C3004v() {
    }

    @Override // p034j$.util.function.InterfaceC2709u
    public final void accept(Object obj, double d) {
        double[] dArr = (double[]) obj;
        dArr[2] = dArr[2] + 1.0d;
        AbstractC2944l.m377b(dArr, d);
        dArr[3] = dArr[3] + d;
    }
}
