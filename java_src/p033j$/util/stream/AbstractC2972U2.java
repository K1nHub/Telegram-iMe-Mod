package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.Spliterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.U2 */
/* loaded from: classes2.dex */
public abstract class AbstractC2972U2 implements InterfaceC2936N4 {

    /* renamed from: a */
    private final EnumC3029e4 f983a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2972U2(EnumC3029e4 enumC3029e4) {
        this.f983a = enumC3029e4;
    }

    /* renamed from: a */
    public abstract InterfaceC2962S2 mo339a();

    @Override // p033j$.util.stream.InterfaceC2936N4
    /* renamed from: b */
    public /* synthetic */ int mo426b() {
        return 0;
    }

    @Override // p033j$.util.stream.InterfaceC2936N4
    /* renamed from: c */
    public Object mo425c(AbstractC3147y2 abstractC3147y2, Spliterator spliterator) {
        return ((InterfaceC2962S2) new C2977V2(this, abstractC3147y2, spliterator).invoke()).get();
    }

    @Override // p033j$.util.stream.InterfaceC2936N4
    /* renamed from: d */
    public Object mo424d(AbstractC3147y2 abstractC3147y2, Spliterator spliterator) {
        InterfaceC2962S2 mo339a = mo339a();
        AbstractC3012c abstractC3012c = (AbstractC3012c) abstractC3147y2;
        Objects.requireNonNull(mo339a);
        abstractC3012c.mo359m0(abstractC3012c.mo351u0(mo339a), spliterator);
        return mo339a.get();
    }
}
