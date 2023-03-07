package com.smedialink.bots.domain.model;

import java.io.File;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: DownloadSession.kt */
/* loaded from: classes3.dex */
public final class DownloadSession {
    private final String botId;
    private final File file;

    public static /* synthetic */ DownloadSession copy$default(DownloadSession downloadSession, File file, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            file = downloadSession.file;
        }
        if ((i & 2) != 0) {
            str = downloadSession.botId;
        }
        return downloadSession.copy(file, str);
    }

    public final File component1() {
        return this.file;
    }

    public final String component2() {
        return this.botId;
    }

    public final DownloadSession copy(File file, String botId) {
        Intrinsics.checkNotNullParameter(file, "file");
        Intrinsics.checkNotNullParameter(botId, "botId");
        return new DownloadSession(file, botId);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DownloadSession) {
            DownloadSession downloadSession = (DownloadSession) obj;
            return Intrinsics.areEqual(this.file, downloadSession.file) && Intrinsics.areEqual(this.botId, downloadSession.botId);
        }
        return false;
    }

    public int hashCode() {
        return (this.file.hashCode() * 31) + this.botId.hashCode();
    }

    public String toString() {
        return "DownloadSession(file=" + this.file + ", botId=" + this.botId + ')';
    }

    public DownloadSession(File file, String botId) {
        Intrinsics.checkNotNullParameter(file, "file");
        Intrinsics.checkNotNullParameter(botId, "botId");
        this.file = file;
        this.botId = botId;
    }

    public final File getFile() {
        return this.file;
    }

    public final String getBotId() {
        return this.botId;
    }
}
