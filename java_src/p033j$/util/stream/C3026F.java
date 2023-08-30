package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2958e;
import p033j$.util.function.InterfaceC2959f;
/* renamed from: j$.util.stream.F */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3026F implements InterfaceC2959f {

    /* renamed from: a */
    public final /* synthetic */ int f827a = 1;

    /* renamed from: b */
    public final /* synthetic */ Object f828b;

    @Override // p033j$.util.function.InterfaceC2959f
    public final void accept(double d) {
        switch (this.f827a) {
            case 0:
                ((InterfaceC3219m3) this.f828b).accept(d);
                return;
            default:
                ((C3050J) this.f828b).f1040a.accept(d);
                return;
        }
    }

    @Override // p033j$.util.function.InterfaceC2959f
    /* renamed from: j */
    public InterfaceC2959f mo105j(InterfaceC2959f interfaceC2959f) {
        switch (this.f827a) {
            case 0:
                Objects.requireNonNull(interfaceC2959f);
                return new C2958e(this, interfaceC2959f);
            default:
                Objects.requireNonNull(interfaceC2959f);
                return new C2958e(this, interfaceC2959f);
        }
    }
}
