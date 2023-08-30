package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2964k;
import p033j$.util.function.InterfaceC2965l;
/* renamed from: j$.util.stream.B0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3003B0 implements InterfaceC2965l {

    /* renamed from: a */
    public final /* synthetic */ int f791a = 1;

    /* renamed from: b */
    public final /* synthetic */ Object f792b;

    @Override // p033j$.util.function.InterfaceC2965l
    public final void accept(int i) {
        switch (this.f791a) {
            case 0:
                ((InterfaceC3219m3) this.f792b).accept(i);
                return;
            default:
                ((C3027F0) this.f792b).f1052a.accept(i);
                return;
        }
    }

    @Override // p033j$.util.function.InterfaceC2965l
    /* renamed from: l */
    public InterfaceC2965l mo183l(InterfaceC2965l interfaceC2965l) {
        switch (this.f791a) {
            case 0:
                Objects.requireNonNull(interfaceC2965l);
                return new C2964k(this, interfaceC2965l);
            default:
                Objects.requireNonNull(interfaceC2965l);
                return new C2964k(this, interfaceC2965l);
        }
    }
}
