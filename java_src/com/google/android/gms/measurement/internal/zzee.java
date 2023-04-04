package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.os.Parcel;
import android.os.SystemClock;
import com.google.android.gms.common.util.VisibleForTesting;
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes3.dex */
public final class zzee extends zzf {
    private final zzed zza;
    private boolean zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzee(zzfv zzfvVar) {
        super(zzfvVar);
        Context zzau = this.zzs.zzau();
        this.zzs.zzf();
        this.zza = new zzed(this, zzau, "google_app_measurement_local.db");
    }

    /* JADX WARN: Removed duplicated region for block: B:77:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0129  */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r2v13 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean zzq(int r17, byte[] r18) {
        /*
            Method dump skipped, instructions count: 318
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzee.zzq(int, byte[]):boolean");
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    protected final boolean zzf() {
        return false;
    }

    @VisibleForTesting
    final SQLiteDatabase zzh() throws SQLiteException {
        if (this.zzb) {
            return null;
        }
        SQLiteDatabase writableDatabase = this.zza.getWritableDatabase();
        if (writableDatabase == null) {
            this.zzb = true;
            return null;
        }
        return writableDatabase;
    }

    /* JADX WARN: Removed duplicated region for block: B:143:0x0215  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0225  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0242  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0250  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0255  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x01fb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:191:0x01d6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:203:0x0248 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:204:0x0248 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:206:0x0248 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable> zzi(int r23) {
        /*
            Method dump skipped, instructions count: 618
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzee.zzi(int):java.util.List");
    }

    public final void zzj() {
        int delete;
        zzg();
        try {
            SQLiteDatabase zzh = zzh();
            if (zzh == null || (delete = zzh.delete("messages", null, null)) <= 0) {
                return;
            }
            this.zzs.zzay().zzj().zzb("Reset local analytics data. records", Integer.valueOf(delete));
        } catch (SQLiteException e) {
            this.zzs.zzay().zzd().zzb("Error resetting local analytics data. error", e);
        }
    }

    public final boolean zzk() {
        return zzq(3, new byte[0]);
    }

    @VisibleForTesting
    final boolean zzl() {
        Context zzau = this.zzs.zzau();
        this.zzs.zzf();
        return zzau.getDatabasePath("google_app_measurement_local.db").exists();
    }

    public final boolean zzm() {
        int i;
        zzg();
        if (!this.zzb && zzl()) {
            int i2 = 5;
            for (i = 0; i < 5; i = i + 1) {
                SQLiteDatabase sQLiteDatabase = null;
                try {
                    SQLiteDatabase zzh = zzh();
                    if (zzh == null) {
                        this.zzb = true;
                        return false;
                    }
                    zzh.beginTransaction();
                    zzh.delete("messages", "type == ?", new String[]{Integer.toString(3)});
                    zzh.setTransactionSuccessful();
                    zzh.endTransaction();
                    zzh.close();
                    return true;
                } catch (SQLiteDatabaseLockedException unused) {
                    SystemClock.sleep(i2);
                    i2 += 20;
                    i = 0 == 0 ? i + 1 : 0;
                    sQLiteDatabase.close();
                } catch (SQLiteFullException e) {
                    this.zzs.zzay().zzd().zzb("Error deleting app launch break from local database", e);
                    this.zzb = true;
                    if (0 == 0) {
                    }
                    sQLiteDatabase.close();
                } catch (SQLiteException e2) {
                    if (0 != 0) {
                        try {
                            if (sQLiteDatabase.inTransaction()) {
                                sQLiteDatabase.endTransaction();
                            }
                        } catch (Throwable th) {
                            if (0 != 0) {
                                sQLiteDatabase.close();
                            }
                            throw th;
                        }
                    }
                    this.zzs.zzay().zzd().zzb("Error deleting app launch break from local database", e2);
                    this.zzb = true;
                    if (0 != 0) {
                        sQLiteDatabase.close();
                    }
                }
            }
            this.zzs.zzay().zzk().zza("Error deleting app launch break from local database in reasonable time");
        }
        return false;
    }

    public final boolean zzn(zzab zzabVar) {
        byte[] zzan = this.zzs.zzv().zzan(zzabVar);
        if (zzan.length > 131072) {
            this.zzs.zzay().zzh().zza("Conditional user property too long for local database. Sending directly to service");
            return false;
        }
        return zzq(2, zzan);
    }

    public final boolean zzo(zzat zzatVar) {
        Parcel obtain = Parcel.obtain();
        zzau.zza(zzatVar, obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        if (marshall.length > 131072) {
            this.zzs.zzay().zzh().zza("Event is too long for local database. Sending event directly to service");
            return false;
        }
        return zzq(0, marshall);
    }

    public final boolean zzp(zzkv zzkvVar) {
        Parcel obtain = Parcel.obtain();
        zzkw.zza(zzkvVar, obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        if (marshall.length > 131072) {
            this.zzs.zzay().zzh().zza("User property too long for local database. Sending directly to service");
            return false;
        }
        return zzq(1, marshall);
    }
}
