package p033j$.util.stream;

import p033j$.util.function.Predicate;
/* renamed from: j$.util.stream.f1 */
/* loaded from: classes2.dex */
class C3091f1 extends AbstractC3115j1 {

    /* renamed from: c */
    final /* synthetic */ EnumC3121k1 f1029c;

    /* renamed from: d */
    final /* synthetic */ Predicate f1030d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3091f1(EnumC3121k1 enumC3121k1, Predicate predicate) {
        super(enumC3121k1);
        this.f1029c = enumC3121k1;
        this.f1030d = predicate;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        boolean z;
        boolean z2;
        if (this.f1059a) {
            return;
        }
        boolean test = this.f1030d.test(obj);
        z = this.f1029c.f1065a;
        if (test == z) {
            this.f1059a = true;
            z2 = this.f1029c.f1066b;
            this.f1060b = z2;
        }
    }
}
