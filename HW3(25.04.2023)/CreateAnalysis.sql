USE [HW_3]
GO

/****** Object:  Table [dbo].[Analysis]    Script Date: 27.04.2023 17:14:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Analysis](
	[an_id] [int] IDENTITY(1,1) NOT NULL,
	[an_name] [nvarchar](50) NULL,
	[an_cost] [money] NULL,
	[an_price] [money] NULL,
	[an_group] [int] NULL,
 CONSTRAINT [PK_Analysis] PRIMARY KEY CLUSTERED 
(
	[an_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Analysis]  WITH CHECK ADD  CONSTRAINT [FK_Analysis_Groups] FOREIGN KEY([an_group])
REFERENCES [dbo].[Groups] ([gr_id])
GO

ALTER TABLE [dbo].[Analysis] CHECK CONSTRAINT [FK_Analysis_Groups]
GO


