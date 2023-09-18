package p033j$.util.stream;
/* renamed from: j$.util.stream.e */
/* loaded from: classes2.dex */
abstract class AbstractC3083e {

    /* renamed from: a */
    protected final int f1017a;

    /* renamed from: b */
    protected int f1018b;

    /* renamed from: c */
    protected int f1019c;

    /* renamed from: d */
    protected long[] f1020d;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC3083e() {
        this.f1017a = 4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC3083e(int i) {
        if (i >= 0) {
            this.f1017a = Math.max(4, 32 - Integer.numberOfLeadingZeros(i - 1));
            return;
        }
        throw new IllegalArgumentException("Illegal Capacity: " + i);
    }

    public abstract void clear();

    public long count() {
        int i = this.f1019c;
        return i == 0 ? this.f1018b : this.f1020d[i] + this.f1018b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: s */
    public int m434s(int i) {
        return 1 << ((i == 0 || i == 1) ? this.f1017a : Math.min((this.f1017a + i) - 1, 30));
    }
}
