package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2958e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2959f;
/* renamed from: j$.util.stream.n4 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3226n4 implements InterfaceC3201j3 {

    /* renamed from: a */
    public final /* synthetic */ int f1100a = 0;

    /* renamed from: b */
    public final /* synthetic */ Object f1101b;

    public /* synthetic */ C3226n4(InterfaceC2959f interfaceC2959f) {
        this.f1101b = interfaceC2959f;
    }

    @Override // p033j$.util.stream.InterfaceC3201j3, p033j$.util.stream.InterfaceC3219m3
    public final void accept(double d) {
        switch (this.f1100a) {
            case 0:
                ((InterfaceC2959f) this.f1101b).accept(d);
                return;
            default:
                ((C3116U3) this.f1101b).accept(d);
                return;
        }
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f1100a) {
            case 0:
                return Consumer.CC.$default$andThen(this, consumer);
            default:
                return Consumer.CC.$default$andThen(this, consumer);
        }
    }

    /* renamed from: b */
    public /* synthetic */ void m381b(Double d) {
        switch (this.f1100a) {
            case 0:
                AbstractC3229o1.m377a(this, d);
                return;
            default:
                AbstractC3229o1.m377a(this, d);
                return;
        }
    }

    @Override // p033j$.util.function.InterfaceC2959f
    /* renamed from: j */
    public InterfaceC2959f mo105j(InterfaceC2959f interfaceC2959f) {
        switch (this.f1100a) {
            case 0:
                Objects.requireNonNull(interfaceC2959f);
                return new C2958e(this, interfaceC2959f);
            default:
                Objects.requireNonNull(interfaceC2959f);
                return new C2958e(this, interfaceC2959f);
        }
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: m */
    public /* synthetic */ void mo339m() {
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: n */
    public /* synthetic */ void mo315n(long j) {
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: o */
    public /* synthetic */ boolean mo314o() {
        return false;
    }

    public /* synthetic */ C3226n4(C3116U3 c3116u3) {
        this.f1101b = c3116u3;
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    public /* synthetic */ void accept(int i) {
        switch (this.f1100a) {
            case 0:
                AbstractC3229o1.m374d(this);
                throw null;
            default:
                AbstractC3229o1.m374d(this);
                throw null;
        }
    }

    @Override // p033j$.util.stream.InterfaceC3219m3, p033j$.util.stream.InterfaceC3213l3, p033j$.util.function.InterfaceC2970q
    public /* synthetic */ void accept(long j) {
        switch (this.f1100a) {
            case 0:
                AbstractC3229o1.m373e(this);
                throw null;
            default:
                AbstractC3229o1.m373e(this);
                throw null;
        }
    }

    @Override // p033j$.util.function.Consumer
    public /* bridge */ /* synthetic */ void accept(Object obj) {
        switch (this.f1100a) {
            case 0:
                m381b((Double) obj);
                return;
            default:
                m381b((Double) obj);
                return;
        }
    }
}
