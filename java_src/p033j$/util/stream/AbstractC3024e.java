package p033j$.util.stream;
/* renamed from: j$.util.stream.e */
/* loaded from: classes2.dex */
abstract class AbstractC3024e {

    /* renamed from: a */
    protected final int f1066a;

    /* renamed from: b */
    protected int f1067b;

    /* renamed from: c */
    protected int f1068c;

    /* renamed from: d */
    protected long[] f1069d;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC3024e() {
        this.f1066a = 4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC3024e(int i) {
        if (i >= 0) {
            this.f1066a = Math.max(4, 32 - Integer.numberOfLeadingZeros(i - 1));
            return;
        }
        throw new IllegalArgumentException("Illegal Capacity: " + i);
    }

    public abstract void clear();

    public long count() {
        int i = this.f1068c;
        return i == 0 ? this.f1067b : this.f1069d[i] + this.f1067b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: r */
    public int m480r(int i) {
        return 1 << ((i == 0 || i == 1) ? this.f1066a : Math.min((this.f1066a + i) - 1, 30));
    }
}
