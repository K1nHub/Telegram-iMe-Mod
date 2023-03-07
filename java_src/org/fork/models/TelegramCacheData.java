package org.fork.models;

import com.iMe.i_staking.request.StakingApprovalPrepareRequest$$ExternalSyntheticBackport0;
import java.io.File;
import java.util.ArrayList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.p048ui.Components.StorageDiagramView;
/* compiled from: TelegramCacheData.kt */
/* loaded from: classes4.dex */
public final class TelegramCacheData {
    private StorageDiagramView.ClearViewData clearViewData;
    private final ArrayList<File> files;
    private long size;

    public TelegramCacheData() {
        this(null, 0L, null, 7, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ TelegramCacheData copy$default(TelegramCacheData telegramCacheData, ArrayList arrayList, long j, StorageDiagramView.ClearViewData clearViewData, int i, Object obj) {
        if ((i & 1) != 0) {
            arrayList = telegramCacheData.files;
        }
        if ((i & 2) != 0) {
            j = telegramCacheData.size;
        }
        if ((i & 4) != 0) {
            clearViewData = telegramCacheData.clearViewData;
        }
        return telegramCacheData.copy(arrayList, j, clearViewData);
    }

    public final ArrayList<File> component1() {
        return this.files;
    }

    public final long component2() {
        return this.size;
    }

    public final StorageDiagramView.ClearViewData component3() {
        return this.clearViewData;
    }

    public final TelegramCacheData copy(ArrayList<File> files, long j, StorageDiagramView.ClearViewData clearViewData) {
        Intrinsics.checkNotNullParameter(files, "files");
        return new TelegramCacheData(files, j, clearViewData);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TelegramCacheData) {
            TelegramCacheData telegramCacheData = (TelegramCacheData) obj;
            return Intrinsics.areEqual(this.files, telegramCacheData.files) && this.size == telegramCacheData.size && Intrinsics.areEqual(this.clearViewData, telegramCacheData.clearViewData);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = ((this.files.hashCode() * 31) + StakingApprovalPrepareRequest$$ExternalSyntheticBackport0.m716m(this.size)) * 31;
        StorageDiagramView.ClearViewData clearViewData = this.clearViewData;
        return hashCode + (clearViewData == null ? 0 : clearViewData.hashCode());
    }

    public String toString() {
        return "TelegramCacheData(files=" + this.files + ", size=" + this.size + ", clearViewData=" + this.clearViewData + ')';
    }

    public TelegramCacheData(ArrayList<File> files, long j, StorageDiagramView.ClearViewData clearViewData) {
        Intrinsics.checkNotNullParameter(files, "files");
        this.files = files;
        this.size = j;
        this.clearViewData = clearViewData;
    }

    public /* synthetic */ TelegramCacheData(ArrayList arrayList, long j, StorageDiagramView.ClearViewData clearViewData, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new ArrayList() : arrayList, (i & 2) != 0 ? 0L : j, (i & 4) != 0 ? null : clearViewData);
    }

    public final ArrayList<File> getFiles() {
        return this.files;
    }

    public final long getSize() {
        return this.size;
    }

    public final void setSize(long j) {
        this.size = j;
    }

    public final StorageDiagramView.ClearViewData getClearViewData() {
        return this.clearViewData;
    }

    public final void setClearViewData(StorageDiagramView.ClearViewData clearViewData) {
        this.clearViewData = clearViewData;
    }
}
