package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.K4 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2922K4 implements InterfaceC3080m3 {

    /* renamed from: a */
    public final /* synthetic */ int f863a = 0;

    /* renamed from: b */
    public final /* synthetic */ Object f864b;

    @Override // p033j$.util.stream.InterfaceC3080m3
    public /* synthetic */ void accept(double d) {
        switch (this.f863a) {
            case 0:
                AbstractC3090o1.m354f(this);
                throw null;
            default:
                AbstractC3090o1.m354f(this);
                throw null;
        }
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f863a) {
            case 0:
                return Objects.requireNonNull(consumer);
            default:
                return Objects.requireNonNull(consumer);
        }
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: m */
    public /* synthetic */ void mo321m() {
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public /* synthetic */ void mo297n(long j) {
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: o */
    public /* synthetic */ boolean mo296o() {
        return false;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    public /* synthetic */ void accept(int i) {
        switch (this.f863a) {
            case 0:
                AbstractC3090o1.m356d(this);
                throw null;
            default:
                AbstractC3090o1.m356d(this);
                throw null;
        }
    }

    @Override // p033j$.util.stream.InterfaceC3080m3, p033j$.util.stream.InterfaceC3074l3, p033j$.util.function.InterfaceC2831q
    public /* synthetic */ void accept(long j) {
        switch (this.f863a) {
            case 0:
                AbstractC3090o1.m355e(this);
                throw null;
            default:
                AbstractC3090o1.m355e(this);
                throw null;
        }
    }

    @Override // p033j$.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f863a) {
            case 0:
                ((Consumer) this.f864b).accept(obj);
                return;
            default:
                ((C3009a4) this.f864b).accept(obj);
                return;
        }
    }
}
