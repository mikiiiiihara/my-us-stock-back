-- CreateTable
CREATE TABLE "User" (
    "id" SERIAL NOT NULL,
    "email" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Asset" (
    "id" SERIAL NOT NULL,
    "asset" DOUBLE PRECISION NOT NULL,
    "year" TEXT NOT NULL,
    "month" TEXT NOT NULL,
    "date" TEXT NOT NULL,
    "addDate" TEXT NOT NULL,
    "updDate" TEXT NOT NULL,
    "cashUSD" DOUBLE PRECISION NOT NULL,
    "cashJPY" INTEGER NOT NULL,
    "cashBTC" DOUBLE PRECISION NOT NULL,
    "cashETH" DOUBLE PRECISION NOT NULL,
    "cashRIPPLE" DOUBLE PRECISION NOT NULL,
    "cashBAT" DOUBLE PRECISION NOT NULL,
    "cashLTC" DOUBLE PRECISION NOT NULL,
    "total" DOUBLE PRECISION NOT NULL,
    "userId" INTEGER NOT NULL,

    CONSTRAINT "Asset_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Strategy" (
    "id" SERIAL NOT NULL,
    "text" TEXT NOT NULL,
    "addDate" TEXT NOT NULL,
    "updDate" TEXT NOT NULL,
    "userId" INTEGER NOT NULL,

    CONSTRAINT "Strategy_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Ticker" (
    "id" SERIAL NOT NULL,
    "ticker" TEXT NOT NULL,
    "getPrice" DOUBLE PRECISION NOT NULL,
    "quantity" INTEGER NOT NULL,
    "dividend" DOUBLE PRECISION NOT NULL,
    "dividendTime" INTEGER NOT NULL,
    "dividendFirstTime" INTEGER NOT NULL,
    "sector" TEXT NOT NULL,
    "usdjpy" DOUBLE PRECISION NOT NULL,
    "userId" INTEGER NOT NULL,

    CONSTRAINT "Ticker_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "User_email_key" ON "User"("email");
