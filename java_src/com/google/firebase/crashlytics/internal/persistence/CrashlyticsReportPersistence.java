package com.google.firebase.crashlytics.internal.persistence;

import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.common.CrashlyticsReportWithSessionId;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import com.google.firebase.crashlytics.internal.model.ImmutableList;
import com.google.firebase.crashlytics.internal.model.serialization.CrashlyticsReportJsonTransform;
import com.google.firebase.crashlytics.internal.settings.SettingsDataProvider;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes3.dex */
public class CrashlyticsReportPersistence {
    private final AtomicInteger eventCounter = new AtomicInteger(0);
    private final File nativeReportsDirectory;
    private final File openSessionsDirectory;
    private final File priorityReportsDirectory;
    private final File reportsDirectory;
    private final SettingsDataProvider settingsDataProvider;
    private static final Charset UTF_8 = Charset.forName("UTF-8");
    private static final int EVENT_NAME_LENGTH = 15;
    private static final CrashlyticsReportJsonTransform TRANSFORM = new CrashlyticsReportJsonTransform();
    private static final Comparator<? super File> LATEST_SESSION_ID_FIRST_COMPARATOR = new Comparator() { // from class: com.google.firebase.crashlytics.internal.persistence.CrashlyticsReportPersistence$$ExternalSyntheticLambda4
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int lambda$static$0;
            lambda$static$0 = CrashlyticsReportPersistence.lambda$static$0((File) obj, (File) obj2);
            return lambda$static$0;
        }
    };
    private static final FilenameFilter EVENT_FILE_FILTER = new FilenameFilter() { // from class: com.google.firebase.crashlytics.internal.persistence.CrashlyticsReportPersistence$$ExternalSyntheticLambda3
        @Override // java.io.FilenameFilter
        public final boolean accept(File file, String str) {
            boolean lambda$static$1;
            lambda$static$1 = CrashlyticsReportPersistence.lambda$static$1(file, str);
            return lambda$static$1;
        }
    };

    private static long convertTimestampFromSecondsToMs(long j) {
        return j * 1000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$static$0(File file, File file2) {
        return file2.getName().compareTo(file.getName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$static$1(File file, String str) {
        return str.startsWith("event");
    }

    public CrashlyticsReportPersistence(File file, SettingsDataProvider settingsDataProvider) {
        File file2 = new File(file, "report-persistence");
        this.openSessionsDirectory = new File(file2, "sessions");
        this.priorityReportsDirectory = new File(file2, "priority-reports");
        this.reportsDirectory = new File(file2, "reports");
        this.nativeReportsDirectory = new File(file2, "native-reports");
        this.settingsDataProvider = settingsDataProvider;
    }

    public void persistReport(CrashlyticsReport crashlyticsReport) {
        CrashlyticsReport.Session session = crashlyticsReport.getSession();
        if (session == null) {
            Logger.getLogger().m1038d("Could not get session for report");
            return;
        }
        String identifier = session.getIdentifier();
        try {
            File prepareDirectory = prepareDirectory(getSessionDirectoryById(identifier));
            writeTextFile(new File(prepareDirectory, "report"), TRANSFORM.reportToJson(crashlyticsReport));
            writeTextFile(new File(prepareDirectory, "start-time"), "", session.getStartedAt());
        } catch (IOException e) {
            Logger logger = Logger.getLogger();
            logger.m1037d("Could not persist report for session " + identifier, e);
        }
    }

    public void persistEvent(CrashlyticsReport.Session.Event event, String str, boolean z) {
        int i = this.settingsDataProvider.getSettings().getSessionData().maxCustomExceptionEvents;
        File sessionDirectoryById = getSessionDirectoryById(str);
        try {
            writeTextFile(new File(sessionDirectoryById, generateEventFilename(this.eventCounter.getAndIncrement(), z)), TRANSFORM.eventToJson(event));
        } catch (IOException e) {
            Logger logger = Logger.getLogger();
            logger.m1029w("Could not persist event for session " + str, e);
        }
        trimEvents(sessionDirectoryById, i);
    }

    public List<String> listSortedOpenSessionIds() {
        List<File> allFilesInDirectory = getAllFilesInDirectory(this.openSessionsDirectory);
        Collections.sort(allFilesInDirectory, LATEST_SESSION_ID_FIRST_COMPARATOR);
        ArrayList arrayList = new ArrayList();
        for (File file : allFilesInDirectory) {
            arrayList.add(file.getName());
        }
        return arrayList;
    }

    public long getStartTimestampMillis(String str) {
        return new File(getSessionDirectoryById(str), "start-time").lastModified();
    }

    public boolean hasFinalizedReports() {
        return !getAllFinalizedReportFiles().isEmpty();
    }

    public void deleteAllReports() {
        for (File file : getAllFinalizedReportFiles()) {
            file.delete();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$deleteFinalizedReport$2(String str, File file, String str2) {
        return str2.startsWith(str);
    }

    public void deleteFinalizedReport(final String str) {
        FilenameFilter filenameFilter = new FilenameFilter() { // from class: com.google.firebase.crashlytics.internal.persistence.CrashlyticsReportPersistence$$ExternalSyntheticLambda1
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str2) {
                boolean lambda$deleteFinalizedReport$2;
                lambda$deleteFinalizedReport$2 = CrashlyticsReportPersistence.lambda$deleteFinalizedReport$2(str, file, str2);
                return lambda$deleteFinalizedReport$2;
            }
        };
        for (File file : combineReportFiles(getFilesInDirectory(this.priorityReportsDirectory, filenameFilter), getFilesInDirectory(this.nativeReportsDirectory, filenameFilter), getFilesInDirectory(this.reportsDirectory, filenameFilter))) {
            file.delete();
        }
    }

    public void finalizeReports(String str, long j) {
        for (File file : capAndGetOpenSessions(str)) {
            Logger logger = Logger.getLogger();
            logger.m1032v("Finalizing report for session " + file.getName());
            synthesizeReport(file, j);
            recursiveDelete(file);
        }
        capFinalizedReports();
    }

    public void finalizeSessionWithNativeEvent(String str, CrashlyticsReport.FilesPayload filesPayload) {
        synthesizeNativeReportFile(new File(getSessionDirectoryById(str), "report"), this.nativeReportsDirectory, filesPayload, str);
    }

    public List<CrashlyticsReportWithSessionId> loadFinalizedReports() {
        List<File> allFinalizedReportFiles = getAllFinalizedReportFiles();
        ArrayList arrayList = new ArrayList();
        arrayList.ensureCapacity(allFinalizedReportFiles.size());
        for (File file : getAllFinalizedReportFiles()) {
            try {
                arrayList.add(CrashlyticsReportWithSessionId.create(TRANSFORM.reportFromJson(readTextFile(file)), file.getName()));
            } catch (IOException e) {
                Logger logger = Logger.getLogger();
                logger.m1029w("Could not load report file " + file + "; deleting", e);
                file.delete();
            }
        }
        return arrayList;
    }

    private List<File> capAndGetOpenSessions(final String str) {
        List<File> filesInDirectory = getFilesInDirectory(this.openSessionsDirectory, new FileFilter() { // from class: com.google.firebase.crashlytics.internal.persistence.CrashlyticsReportPersistence$$ExternalSyntheticLambda0
            @Override // java.io.FileFilter
            public final boolean accept(File file) {
                boolean lambda$capAndGetOpenSessions$3;
                lambda$capAndGetOpenSessions$3 = CrashlyticsReportPersistence.lambda$capAndGetOpenSessions$3(str, file);
                return lambda$capAndGetOpenSessions$3;
            }
        });
        Collections.sort(filesInDirectory, LATEST_SESSION_ID_FIRST_COMPARATOR);
        if (filesInDirectory.size() <= 8) {
            return filesInDirectory;
        }
        for (File file : filesInDirectory.subList(8, filesInDirectory.size())) {
            recursiveDelete(file);
        }
        return filesInDirectory.subList(0, 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$capAndGetOpenSessions$3(String str, File file) {
        return file.isDirectory() && !file.getName().equals(str);
    }

    private void capFinalizedReports() {
        int i = this.settingsDataProvider.getSettings().getSessionData().maxCompleteSessionsCount;
        List<File> allFinalizedReportFiles = getAllFinalizedReportFiles();
        int size = allFinalizedReportFiles.size();
        if (size <= i) {
            return;
        }
        for (File file : allFinalizedReportFiles.subList(i, size)) {
            file.delete();
        }
    }

    private List<File> getAllFinalizedReportFiles() {
        return sortAndCombineReportFiles(combineReportFiles(getAllFilesInDirectory(this.priorityReportsDirectory), getAllFilesInDirectory(this.nativeReportsDirectory)), getAllFilesInDirectory(this.reportsDirectory));
    }

    private File getSessionDirectoryById(String str) {
        return new File(this.openSessionsDirectory, str);
    }

    private void synthesizeReport(File file, long j) {
        boolean z;
        List<File> filesInDirectory = getFilesInDirectory(file, EVENT_FILE_FILTER);
        if (filesInDirectory.isEmpty()) {
            Logger.getLogger().m1032v("Session " + file.getName() + " has no events.");
            return;
        }
        Collections.sort(filesInDirectory);
        ArrayList arrayList = new ArrayList();
        loop0: while (true) {
            z = false;
            for (File file2 : filesInDirectory) {
                try {
                    arrayList.add(TRANSFORM.eventFromJson(readTextFile(file2)));
                } catch (IOException e) {
                    Logger.getLogger().m1029w("Could not add event to report for " + file2, e);
                }
                if (z || isHighPriorityEventFile(file2.getName())) {
                    z = true;
                }
            }
        }
        if (arrayList.isEmpty()) {
            Logger.getLogger().m1030w("Could not parse event files for session " + file.getName());
            return;
        }
        String str = null;
        File file3 = new File(file, "user");
        if (file3.isFile()) {
            try {
                str = readTextFile(file3);
            } catch (IOException e2) {
                Logger.getLogger().m1029w("Could not read user ID file in " + file.getName(), e2);
            }
        }
        synthesizeReportFile(new File(file, "report"), z ? this.priorityReportsDirectory : this.reportsDirectory, arrayList, j, z, str);
    }

    private static void synthesizeNativeReportFile(File file, File file2, CrashlyticsReport.FilesPayload filesPayload, String str) {
        try {
            CrashlyticsReportJsonTransform crashlyticsReportJsonTransform = TRANSFORM;
            writeTextFile(new File(prepareDirectory(file2), str), crashlyticsReportJsonTransform.reportToJson(crashlyticsReportJsonTransform.reportFromJson(readTextFile(file)).withNdkPayload(filesPayload)));
        } catch (IOException e) {
            Logger logger = Logger.getLogger();
            logger.m1029w("Could not synthesize final native report file for " + file, e);
        }
    }

    private static void synthesizeReportFile(File file, File file2, List<CrashlyticsReport.Session.Event> list, long j, boolean z, String str) {
        try {
            CrashlyticsReportJsonTransform crashlyticsReportJsonTransform = TRANSFORM;
            CrashlyticsReport withEvents = crashlyticsReportJsonTransform.reportFromJson(readTextFile(file)).withSessionEndFields(j, z, str).withEvents(ImmutableList.from(list));
            CrashlyticsReport.Session session = withEvents.getSession();
            if (session == null) {
                return;
            }
            writeTextFile(new File(prepareDirectory(file2), session.getIdentifier()), crashlyticsReportJsonTransform.reportToJson(withEvents));
        } catch (IOException e) {
            Logger logger = Logger.getLogger();
            logger.m1029w("Could not synthesize final report file for " + file, e);
        }
    }

    private static List<File> sortAndCombineReportFiles(List<File>... listArr) {
        for (List<File> list : listArr) {
            Collections.sort(list, LATEST_SESSION_ID_FIRST_COMPARATOR);
        }
        return combineReportFiles(listArr);
    }

    private static List<File> combineReportFiles(List<File>... listArr) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        for (List<File> list : listArr) {
            i += list.size();
        }
        arrayList.ensureCapacity(i);
        for (List<File> list2 : listArr) {
            arrayList.addAll(list2);
        }
        return arrayList;
    }

    private static boolean isHighPriorityEventFile(String str) {
        return str.startsWith("event") && str.endsWith("_");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isNormalPriorityEventFile(File file, String str) {
        return str.startsWith("event") && !str.endsWith("_");
    }

    private static String generateEventFilename(int i, boolean z) {
        String format = String.format(Locale.US, "%010d", Integer.valueOf(i));
        String str = z ? "_" : "";
        return "event" + format + str;
    }

    private static int trimEvents(File file, int i) {
        List<File> filesInDirectory = getFilesInDirectory(file, new FilenameFilter() { // from class: com.google.firebase.crashlytics.internal.persistence.CrashlyticsReportPersistence$$ExternalSyntheticLambda2
            @Override // java.io.FilenameFilter
            public final boolean accept(File file2, String str) {
                boolean isNormalPriorityEventFile;
                isNormalPriorityEventFile = CrashlyticsReportPersistence.isNormalPriorityEventFile(file2, str);
                return isNormalPriorityEventFile;
            }
        });
        Collections.sort(filesInDirectory, new Comparator() { // from class: com.google.firebase.crashlytics.internal.persistence.CrashlyticsReportPersistence$$ExternalSyntheticLambda5
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int oldestEventFileFirst;
                oldestEventFileFirst = CrashlyticsReportPersistence.oldestEventFileFirst((File) obj, (File) obj2);
                return oldestEventFileFirst;
            }
        });
        return capFilesCount(filesInDirectory, i);
    }

    private static String getEventNameWithoutPriority(String str) {
        return str.substring(0, EVENT_NAME_LENGTH);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int oldestEventFileFirst(File file, File file2) {
        return getEventNameWithoutPriority(file.getName()).compareTo(getEventNameWithoutPriority(file2.getName()));
    }

    private static List<File> getAllFilesInDirectory(File file) {
        return getFilesInDirectory(file, (FileFilter) null);
    }

    private static List<File> getFilesInDirectory(File file, FilenameFilter filenameFilter) {
        if (!file.isDirectory()) {
            return Collections.emptyList();
        }
        File[] listFiles = filenameFilter == null ? file.listFiles() : file.listFiles(filenameFilter);
        return listFiles != null ? Arrays.asList(listFiles) : Collections.emptyList();
    }

    private static List<File> getFilesInDirectory(File file, FileFilter fileFilter) {
        if (!file.isDirectory()) {
            return Collections.emptyList();
        }
        File[] listFiles = fileFilter == null ? file.listFiles() : file.listFiles(fileFilter);
        return listFiles != null ? Arrays.asList(listFiles) : Collections.emptyList();
    }

    private static File prepareDirectory(File file) throws IOException {
        if (makeDirectory(file)) {
            return file;
        }
        throw new IOException("Could not create directory " + file);
    }

    private static boolean makeDirectory(File file) {
        return file.exists() || file.mkdirs();
    }

    private static void writeTextFile(File file, String str) throws IOException {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file), UTF_8);
        try {
            outputStreamWriter.write(str);
            outputStreamWriter.close();
        } catch (Throwable th) {
            try {
                outputStreamWriter.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static void writeTextFile(File file, String str, long j) throws IOException {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file), UTF_8);
        try {
            outputStreamWriter.write(str);
            file.setLastModified(convertTimestampFromSecondsToMs(j));
            outputStreamWriter.close();
        } catch (Throwable th) {
            try {
                outputStreamWriter.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static String readTextFile(File file) throws IOException {
        byte[] bArr = new byte[8192];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        FileInputStream fileInputStream = new FileInputStream(file);
        while (true) {
            try {
                int read = fileInputStream.read(bArr);
                if (read > 0) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    String str = new String(byteArrayOutputStream.toByteArray(), UTF_8);
                    fileInputStream.close();
                    return str;
                }
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
    }

    private static int capFilesCount(List<File> list, int i) {
        int size = list.size();
        for (File file : list) {
            if (size <= i) {
                return size;
            }
            recursiveDelete(file);
            size--;
        }
        return size;
    }

    private static void recursiveDelete(File file) {
        if (file == null) {
            return;
        }
        if (file.isDirectory()) {
            for (File file2 : file.listFiles()) {
                recursiveDelete(file2);
            }
        }
        file.delete();
    }
}
