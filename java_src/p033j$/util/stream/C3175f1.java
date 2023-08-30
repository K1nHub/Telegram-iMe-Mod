package p033j$.util.stream;

import p033j$.util.function.Predicate;
/* renamed from: j$.util.stream.f1 */
/* loaded from: classes2.dex */
class C3175f1 extends AbstractC3199j1 {

    /* renamed from: c */
    final /* synthetic */ EnumC3205k1 f1038c;

    /* renamed from: d */
    final /* synthetic */ Predicate f1039d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3175f1(EnumC3205k1 enumC3205k1, Predicate predicate) {
        super(enumC3205k1);
        this.f1038c = enumC3205k1;
        this.f1039d = predicate;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        boolean z;
        boolean z2;
        if (this.f1068a) {
            return;
        }
        boolean test = this.f1039d.test(obj);
        z = this.f1038c.f1074a;
        if (test == z) {
            this.f1068a = true;
            z2 = this.f1038c.f1075b;
            this.f1069b = z2;
        }
    }
}
