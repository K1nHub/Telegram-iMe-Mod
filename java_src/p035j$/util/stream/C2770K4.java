package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.function.Consumer;
/* renamed from: j$.util.stream.K4 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2770K4 implements InterfaceC2928m3 {

    /* renamed from: a */
    public final /* synthetic */ int f783a = 0;

    /* renamed from: b */
    public final /* synthetic */ Object f784b;

    @Override // p035j$.util.stream.InterfaceC2928m3
    public /* synthetic */ void accept(double d) {
        switch (this.f783a) {
            case 0:
                AbstractC2938o1.m363f(this);
                throw null;
            default:
                AbstractC2938o1.m363f(this);
                throw null;
        }
    }

    @Override // p035j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f783a) {
            case 0:
                return Objects.requireNonNull(consumer);
            default:
                return Objects.requireNonNull(consumer);
        }
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: m */
    public /* synthetic */ void mo330m() {
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: n */
    public /* synthetic */ void mo306n(long j) {
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: o */
    public /* synthetic */ boolean mo305o() {
        return false;
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    public /* synthetic */ void accept(int i) {
        switch (this.f783a) {
            case 0:
                AbstractC2938o1.m365d(this);
                throw null;
            default:
                AbstractC2938o1.m365d(this);
                throw null;
        }
    }

    @Override // p035j$.util.stream.InterfaceC2928m3, p035j$.util.stream.InterfaceC2922l3, p035j$.util.function.InterfaceC2679q
    public /* synthetic */ void accept(long j) {
        switch (this.f783a) {
            case 0:
                AbstractC2938o1.m364e(this);
                throw null;
            default:
                AbstractC2938o1.m364e(this);
                throw null;
        }
    }

    @Override // p035j$.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f783a) {
            case 0:
                ((Consumer) this.f784b).accept(obj);
                return;
            default:
                ((C2857a4) this.f784b).accept(obj);
                return;
        }
    }
}
